require_relative 'code_maker'

class GuessChecker
  attr_reader :player_code, :game_code

  def initialize(player_code, game_code)
     @player_code = player_code
     @game_code = game_code
  end

  def color_match
    matches = player_code.count { |color| game_code.include?(color) }
    matches - position_matc
  end

  def position_match
    player_code.zip(game_code).count { |player, game| player == game }
  end

  def compare
    if player_code == game_code
      true
    else
      result = { :color => self.color_match, :position => self.position_match }
    end
  end

end



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
