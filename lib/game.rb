require_relative 'guess_checker'
require_relative 'validate_guess'

class Game
    attr_reader :instream,
                :outstream,
                :messages,
                :turns,
                :game_code,
                :command,
                :checker,
                :validator

  def initialize(instream, outstream, messages)
    @instream   = instream
    @outstream  = outstream
    @messages   = messages
    @turns      = 0
    @command    = ""
    @game_code  = CodeMaker.new
  end

  def play
    outstream.puts messages.game_intro
      @game_code   = @game_code.generate
      puts @game_code.join
    begin
      outstream.puts messages.game_prompt
      @command     = instream.gets.strip
      @player_code = command.split('')
      @validator   = ValidateGuess.new(@player_code)
      @checker     = GuessChecker.new(@player_code, @game_code)
      process_game_turn
    end until win? || exit?
  end

  def process_game_turn
    case
    when exit?
      outstream.puts messages.exit
    when win?
      outstream.puts messages.win
    when too_short?
      outstream.puts messages.too_short
    when too_long?
      outstream.puts messages.too_long
    when invalid_letters?
      outstream.puts messages.invalid_letters
    when no_matches?
      outstream.puts messages.no_matches
      add_turn
      outstream.puts messages.turns(turns)
    when color_and_position_matches?
      outstream.puts messages.color_and_position_matches(checker.color_match, checker.position_match)
      add_turn
      outstream.puts messages.turns(turns)
    end
  end

  def exit?
    command == "q" || command == "quit"
  end

  def win?
    checker.compare == true

  end

  def too_short?
    @player_code.length < 4
  end

  def too_long?
    @player_code.length > 4
  end

  def invalid_letters?
    validator.verify == false
  end

  def no_matches?
    checker.position_match == 0 && checker.color_match == 0
    #@checker.result[:color] == 0 || @checker.result[:position] == 0
  end

  def color_and_position_matches?
    checker.compare
  end

  def add_turn
    @turns += 1
  end
end
