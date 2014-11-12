gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/game'
require_relative '../lib/messages'

class GameTest < MiniTest::Test
  def setup
    @game = Game.new($stdin, $stdout, Messages.new)
    # @instream = $stdin
    # @outstream = $stout
    # @messages = messages
  end

  def test_it_creates_a_new_game
    assert_equal "Welcome to MasterMind. Would you like to play to the death?", @game.play
  end


  def test_the_player_code_is_not_more_than_four_characters
    skip
    assert_equal 4, game.code.length
  end

  def test_the_player_code_is_not_less_than_four_characters
    skip

    assert_equal 4, game.code.length
  end

  def test_the_player_code_consists_only_of_r_g_b_or_y
    skip

    assert_equal
  end

  def test_the_game_ends_with_a_correct_guess
    skip
  end

  def test_it_tracks_turns
    skip
  end



  def test_the_game_exits

  end
end
