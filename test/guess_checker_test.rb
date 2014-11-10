gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/mock'
require_relative '../lib/code_maker'
require_relative '../lib/guess_checker'

class GuessCheckerTest < MiniTest::Test
  def test_it_compares_player_code_to_game_code
    player_code = Minitest::Mock.new
    code_maker  = CodeMaker.new
    game_code   = code_maker.generate
    checker     = GuessChecker.new(player_code)
    player_code.expect(:compare_code, [], ['ryby'])
    checker.compare_code('ryby')
    require 'pry' ; binding.pry
    player_code.verify
  end

end
