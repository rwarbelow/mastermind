require_relative 'messages'

class Game
    attr_reader :instream, :outstream, :messages

  def initialize(instream, outstream, messages)
    @instream   = instream
    @outstream  = outstream
    @messages   = messages
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
      outstream.puts messages.turns
    when color_and_position_matches?
      outstream.puts messages.color_and_position_matches
      outstream.puts messages.turns
    end
  end

end
