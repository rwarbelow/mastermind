
# match
# sequence = ["R", "B", "G", "G"]  # => ["R", "B", "G", "G"]
# player   = ["R", "B", "G", "G"]  # => ["R", "B", "G", "G"]

# #position match
sequence = ["R", "B", "G", "G"]
player   = ["B", "Y", "G", "B"]
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
# position_match = 0
# color_match = 0
def rounds
  ?.count

position = 0
player.each do |color|
  if player == sequence
    # puts "You're a winner! Chicken dinner!"
    # position_match += 4

  elsif player[position] == sequence[position]
    # zip(player, sequence).
    # compare.each { |color|  }
    # puts "This is a color and position match."
    position_match += 1
  elsif sequence.any? { |sequence_color| sequence_color == color }
    # puts "This is a color match only."
    color_match += 1
  else
    # puts "There were no matches, sorry loser."
  end
  position += 1
end
output = player.join("")
correct_elements = position_match + color_match
# position_singular = if position_match == 1                                                                                      # => true
#                       puts "position"                                                                                             # => nil
#                     else
#                       puts "positions"
#                     end                                                                                                           # => nil
if position_match
puts "'#{output}' has #{correct_elements} of the correct elements with #{position_match} in the correct positions."

# for each turn need to reset the position_match and color_match values, but increment the round tally
