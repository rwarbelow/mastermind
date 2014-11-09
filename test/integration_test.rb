gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/game'

class IntegrationTest < MiniTest::Test
  def test_it_creates_a_color_sequence
    color_sequence = ColorSequence.new

    define an array of colors
    generate four random colors from that array array.shuffle.pop

    # should create a sequence of four from for available colors.
    # do not have to use each of the colors.
    # test it's a different sequence each time
    assert_equal 1, color_sequence #whatevs
  end

  def test_it_compares_color_sequence_to_players_sequence
    skip

    compare three types of guesses:
      one with no matches
      one with a color match and a position match
      one with all matches

    # checks for the correct player sequence
    # compares the computer's sequence to the player's
    # outputs a message

    if player[0] == sequence[0]
      display match for position and color
    elseif player[0] == sequnce.any
      display match for color
    else
      do not display any matches
  end

  def test_it_puts_the_game_on_a_timer
    skip


    # test name could change
    # times the game or ends the game, or displays the ending message
  end
end
