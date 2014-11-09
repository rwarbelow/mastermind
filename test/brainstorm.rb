
# match
# sequence = ["R", "B", "G", "G"]  # => ["R", "B", "G", "G"]
# player   = ["R", "B", "G", "G"]  # => ["R", "B", "G", "G"]

# #position match
sequence = ["R", "B", "G", "G"]  # => ["R", "B", "G", "G"]
player   = ["B", "Y", "G", "B"]  # => ["B", "Y", "G", "B"]
#
# # color match
# sequence = ["R", "B", "G", "G"]  # => ["R", "B", "G", "G"]
# player   = ["B", "Y", "B", "B"]  # => ["B", "Y", "B", "B"]
# #
# #none match
# sequence = ["R", "B", "G", "G"]  # => ["R", "B", "G", "G"]
# player   = ["Y", "Y", "Y", "Y"]  # => ["Y", "Y", "Y", "Y"]


#first attempt, compares the first index of each strand
# if player[0] == sequence[0]
#   puts "This is a color and position match."
# elsif sequence.any? { |color| player[0] == color }
#   puts "This is a color match only."
# else
#   puts "There were no matches, sorry loser."
# end
position_match = 0                                                                                                  # => 0
color_match = 0                                                                                                     # => 0
position = 0                                                                                                        # => 0
player.each do |color|                                                                                              # => ["B", "Y", "G", "B"]
  if player == sequence                                                                                             # => false, false, false, false
    # puts "You're a winner! Chicken dinner!"
    position_match += 4
  elsif player[position] == sequence[position]                                                                      # => false, false, true, false
    # zip(player, sequence).
    # compare.each { |color|  }
    # puts "This is a color and position match."
    position_match += 1                                                                                             # => 1
  elsif sequence.any? { |sequence_color| sequence_color == color }                                                  # => true, false, true
    # puts "This is a color match only."
    color_match += 1                                                                                                # => 1, 2
  else
    # puts "There were no matches, sorry loser."
  end                                                                                                               # => 1, nil, 1, 2
  position += 1                                                                                                     # => 1, 2, 3, 4
end                                                                                                                 # => ["B", "Y", "G", "B"]
output = player.join("")                                                                                            # => "BYGB"
correct_elements = position_match + color_match                                                                     # => 3
# position_singular = if position_match == 1                                                                                      # => true
#                       puts "position"                                                                                             # => nil
#                     else
#                       puts "positions"
#                     end                                                                                                           # => nil
puts "'#{output}' has #{correct_elements} of the correct elements with #{position_match} in the correct positions."  # => nil

# >> 'BYGB' has 3 of the correct elements with 1 in the correct position.
