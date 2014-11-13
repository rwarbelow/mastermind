gem 'minitest'                           # => true
require 'minitest/autorun'               # => true
require 'minitest/pride'                 # => true
require_relative '../lib/validate_guess'

class TestValidateCode < MiniTest::Test
  def test_it_validates_code_with_letters_r_g_b_and_y
    player_code   = ["r", "b", "b", "y"]
    validator = ValidateGuess.new(player_code)
    assert validator.verify
  end

  def test_it_rejects_code_with_one_incorrect_value
    player_code   = ["x", "b", "b", "y"]
    validator = ValidateGuess.new(player_code)
    refute validator.verify
  end

  def test_it_rejects_code_with_two_incorrect_values
    player_code   = ["t", "a", "b", "y"]
    validator = ValidateGuess.new(player_code)
    refute validator.verify
  end
end
