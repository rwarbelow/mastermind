require_relative 'code_maker'

class GuessChecker
  attr_reader :player_code, :game_code, :color_match

  def initialize
     @player_code = player_code
     @game_code = CodeMaker.new.generate
     @color_match = 0
  end

  def color_match?
    true
  end

  def compare(player_code, game_code)
    if player_code == game_code
      true
    else
      false
    end
  end

end

guess=GuessChecker.new
guess.compare('rbby', ["r", "b", "b", "y"])



#   def initialize
#     # @instream = instream
#     @game_code = CodeMaker.new.generate
#     # @player_code = instream
#   end
#
#   def compare_code(instream)
#     @player_code = instream.split('')
#     position = 0
#     player_code.each do |color|
#     case
#     when player_code == game_code
#       position_match += 4
#     when player_code[position] == game_code[position]
#       position_match += 1
#     when game_code.any? { |color| game_code == color}
#       color_match += 1
#     else
#     end
#     position += 1
#   end
# end
#
# end
