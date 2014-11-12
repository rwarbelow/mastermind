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
  end

end
