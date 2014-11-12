require_relative 'game'
require_relative 'messages'

class CLI
  attr_reader :instream,
              :outstream,
              :messages,
              :command

  def initialize(instream, outstream)
    @command    = ""
    @messages   = Messages.new
    @instream   = instream
    @outstream  = outstream
  end

  def call
    outstream.puts messages.intro
    until quit?
      outstream.puts messages.intro_command
      @command = instream.gets.strip
      process_initial_commands
    end
    outstream.puts
  end

  def process_initial_commands
    case
    when play?
      game = Game.new(instream, outstream, messages)
      game.play
    when instructions?
      outstream.puts messages.game_instructions
    when quit?
      outstream.puts messages.exit
    else
      outstream.puts messages.not_a_valid_command
    end
  end

  def play?
    command == "p"
  end

  def instructions?
    command == "i"
  end

  def quit?
    command == "q" || command == "quit"
  end
end
