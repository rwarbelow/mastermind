gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/code_maker'

class CodeMakerTest < MiniTest::Test
  def test_it_makes_a_code
    code_maker = CodeMaker.new
    code_maker.generate
    assert_equal 4, code_maker.code.length
  end

  def test_the_array_only_contains_R_G_B_or_Y
    code_maker = CodeMaker.new
    code_maker.generate
    @colors = %w(r g b y)
    assert @colors.include?(code_maker.code.sample)
  end
end
