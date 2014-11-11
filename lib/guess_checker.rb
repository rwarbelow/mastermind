require_relative 'code_maker'  # => true

class GuessChecker
  attr_reader :player_code, :game_code, :color_match  # => nil

  def initialize
     @player_code = player_code           # => nil
     @game_code = CodeMaker.new.generate  # => 4
     @color_match = 0                     # => 0
  end

  def compare(player_code, game_code)
    player_code = player_code.split('')  # => ["r", "b", "b", "y"]
    if player_code == game_code          # => true
      true                               # => true
    else #sequence.any? { |sequence_color| sequence_color == color }
      false
    end                                  # => true
  end

end

guess=GuessChecker.new                       # => #<GuessChecker:0x007fdf9b11ac10 @player_code=nil, @game_code=4, @color_match=0>
guess.compare('rbby', ["r", "b", "b", "y"])  # => nil



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

# attr_reader :instream
#
# def initialize(instream)
# @instream = instream
# end
#
# def game_code
# code = CodeMaker.new
# game_code = code.generate
# end
# #
# # def player_code
# #   instream.split('')
# # end
#
# def compare_code(instream)
# code_maker  = CodeMaker.new
# game_code   = code_maker.generate
# player_code == game_code
# end

# >> r
# >> b
# >> b
# >> y
