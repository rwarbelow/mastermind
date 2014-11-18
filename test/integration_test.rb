require_relative 'test_helper'
require_relative '../lib/game'

class IntegrationTest < MiniTest::Test
  def test_it_creates_a_color_sequence
    color_sequence = ColorSequence.new

    define an array of colors
    generate four random colors from that array array.shuffle.pop

    # should create a sequence of four from for available colors.
    # do not have to use each of the colors.
    # test it's a different sequence each time
    assert_equal 1, color_sequence
  end

  def test_it_compares_color_sequence_to_players_sequence
    skip

    # checks for the correct player sequence
    # compares the computer's sequence to the player's
    # outputs a message
  end

  def test_it_puts_the_game_on_a_timer
    skip


    # test name could change
    # times the game or ends the game, or displays the ending message
  end
end
