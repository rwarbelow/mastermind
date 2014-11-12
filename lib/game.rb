require_relative 'messages'

class Game
    attr_reader :instream, :outstream, :messages, :turns, :player_code, :game_code, :command

  def initialize(instream, outstream, messages)
    @instream   = instream
    @outstream  = outstream
    @messages   = messages
    @turns      = 0
    @command    = ""
    @game_code  = CodeMaker.new
    @checker    = Guess_Checker.new
  end

  def play
    outstream.puts messages.intro
    until win? || exit?
      outstream.puts messages.game_prompt
      @command     = instream.gets.strip
      @player_code = command.split('')
      process_game_turn
  end

  def process_game_turn
    case
    when exit?
      outstream.puts messages.exit
    when win?
      oustream.puts messages.win
    when too_short?
      outstream.puts messages.too_short
    when too_long?
      outstream.puts messages.too_long
    when invalid_letters?
      outstream.puts messages.invalid_letters
    when no_matches?
      outstream.puts messages.no_matches
      add_turn
      outstream.puts messages.turns
    when color_and_position_matches?
      outstream.puts messages.color_and_position_matches
      add_turn
      outstream.puts messages.turns
    end
  end

  def exit?
    command == "q" || command == "quit"
  end

  def win?
    game.compare == true
  end

  def too_short?
    player_code.length < 4
  end

  def too_long?
    player_code.length > 4
  end

  def invalid_letters?

  end

  def no_matches?
    checker.player_match == 0 || checker.color_match == 0
  end

  def color_and_position_matches?
    checker.compare
  end

  def add_turn
    @turns += 1
  end
end
