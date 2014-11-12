gem 'minitest'                      # => true
require 'minitest/autorun'          # => true
require 'minitest/pride'            # => true
require_relative '../lib/messages'  # => true
require_relative '../lib/game'      # => false

class MessagesTest < MiniTest::Test
    def test_it_displays_an_intro_message
      messages = Messages.new                                # => #<Messages:0x007feb4a05e8c0>
      assert_equal "Welcome to MasterMind.", messages.intro  # => true
    end

    def test_it_displays_number_of_turns
      turns = 5
      messages = Messages.new                                 # => #<Messages:0x007feb4a057c00>
      # require 'pry' ; binding.pry                                            # => 5
      assert_equal "You have taken 5 turns.", messages.turns(turns)
    end

    def test_it_gives_feedback_for_a_guess_without_matches
      skip
    end

    def test_it_gives_feedback_for_a_guess_with_position_matches_only
      skip
    end

    def test_it_gives_feedback_for_a_guess_with_color_matches_only
      skip
    end

    def test_it_gives_feedback_for_a_guess_with_both_color_and_position_matches
      skip
    end


    def test_it_displays
      skip
    end

    def test_it_displays
      skip
    end

    def test_it_displays
      skip
    end

    def test_it_displays
      skip
    end

    def test_it_displays
      skip
    end
end

# >> Run options: --seed 47771
# >>
# >> # Running:
# >>
# >> [31mS[0m[32m*[0m[33mS[0m[34mS[0m[41m[37mF[0m[35mS[0m[36mS[0m
# >>
# >> [31mF[0m[32ma[0m[33mb[0m[34mu[0m[35ml[0m[36mo[0m[31mu[0m[32ms[0m[33m [0m[34mr[0m[35mu[0m[36mn[0m in 0.001269s, 5516.1545 runs/s, 1576.0441 assertions/s.
# >>
# >>   1) Failure:
# >> MessagesTest#test_it_displays_number_of_turns [/Users/laurawhalin/Turing/projects/mastermind/test/messages_test.rb:16]:
# >> Expected: "You have taken 5 turns."
# >>   Actual: "You have taken  turns."
# >>
# >> 7 runs, 2 assertions, 1 failures, 0 errors, 5 skips
# >>
# >> You have skipped tests. Run with --verbose for details.
