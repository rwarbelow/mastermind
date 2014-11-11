gem 'minitest'                           # => true
require 'minitest/autorun'               # => true
require 'minitest/pride'                 # => true
require_relative '../lib/guess_checker'  # => true


class GuessCheckerTest < MiniTest::Test
  def test_it_compares_the_two_codes_and_finds_a_match
    guess_checker = GuessChecker.new
    player_code = ["r", "b", "b", "y"]
    game_code = ["r", "b", "b", "y"]
    assert guess_checker.compare(player_code, game_code)
  end

  def test_it_compares_player_and_game_code_and_returns_false
    guess_checker = GuessChecker.new
    player_code = ["g", "g", "g", "g"]
    game_code = ["r", "b", "b", "y"]
    refute guess_checker.compare(player_code, game_code)
  end

  # def test_it_finds_one_color_match_only
  #   guess_checker = GuessChecker.new
  #   player_code = ["b", "g", "g", "g"]
  #   game_code = ["r", "b", "b", "y"]
  #   color_match = 0
  #
  #   guess_checker.compare(player_code, game_code)
  #
  #   if game_code.include?[player_code[0]]
  #     color_match += 1
  #   end

  def test_it_finds_one_color_match_only
    guess_checker = GuessChecker.new
    player_code = ["b", "g", "g", "g"]
    game_code = ["r", "b", "b", "y"]
    assert guess_checker.color_match?
  end

    # if player_code.each { |color| game_code.include?(color)}
    #     color_match += 1
    #   end
    # require 'pry' ; binding.pry

  #   assert_equal 1, color_match
  # end

  def test_it_finds_multiple_color_matches
    skip
    guess_checker = GuessChecker.new
    player_code = ["b", "r", "g", "g"]
    game_code = ["r", "b", "b", "y"]
  end

  def test_it_finds_a_position_match
    skip
    guess_checker = GuessChecker.new
    player_code = ["r", "g", "g", "g"]
    game_code = ["r", "b", "b", "y"]

  end

  def test_it_finds_multiple_position_matches
    skip
    guess_checker = GuessChecker.new
    player_code = ["r", "b", "g", "g"]
    game_code = ["r", "b", "b", "y"]
  end

  def test_it_finds_a_position_and_color_match
    skip
    guess_checker = GuessChecker.new
    player_code = ["r", "y", "g", "g"]
    game_code = ["r", "b", "b", "y"]

  end

end






# This was my failed Mock :-(

# class GuessCheckerTest < MiniTest::Test
#   def test_it_compares_player_code_to_game_code
#     player_code = Minitest::Mock.new
#     # code_maker  = game_code
#     checker     = GuessChecker.new
#     player_code.expect(:to_a, [], ['ryby'])
#     checker.compare_code('rybb')
#     player_code.verify
#   end
#
#   def test_it_compares_player_code_to_game_code
#     #check to see if player_code == game_code
#   end
#
#   end



#
# def test_it_compares_player_code_to_game_code
#   player_code = Minitest::Mock.new                  # => #<Minitest::Mock:0x007ff6ed022560 @expected_calls={}, @actual_calls={}>
#   # code_maker  = CodeMaker.new
#   # game_code   = code_maker.generate
#   checker     = GuessChecker.new(player_code)       # => #<GuessChecker:0x007ff6ed022010 @instream=#<Minitest::Mock:0x007ff6ed022560 @expected_calls={}, @actual_calls={}>>
#   # player_code.expect(:call_code, [], ['ryby'])  # => #<Minitest::Mock:0x007ff6c0941ce0 @expected_calls={:compare_code=>[{:retval=>[], :args=>["ryby"]}]}, @actual_calls={}>
#   assert player_code, checker.compare_code('ryby')  # => true
#   checker.compare_code('rybb')                      # => ["r", "y", "b", "y"]
#   # player_code.verify
# end
#
# def test_it_compares_player_code_to_game_code
#   # compares player_code to game_code and returns either true or false
#   game_code = GuessChecker.new('rbby').game_code
#   player_code = GuessChecker.new('yybb').player_code
#   assert_true player_code.compare_code('ryby')
# end

# >> Run options: --seed 11963
# >>
# >> # Running:
# >>
# >> [31m*[0m
# >>
# >> [31mF[0m[32ma[0m[33mb[0m[34mu[0m[35ml[0m[36mo[0m[31mu[0m[32ms[0m[33m [0m[34mr[0m[35mu[0m[36mn[0m in 0.000961s, 1040.5827 runs/s, 0.0000 assertions/s.
# >>
# >> 1 runs, 0 assertions, 0 failures, 0 errors, 0 skips
