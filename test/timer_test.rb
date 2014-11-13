gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/timer'

class TestTimer < MiniTest::Test
  def test_it_starts_timing
    skip
    timer = Timer.new
    assert_equal Time.now, timer.start
  end

  def test_it_stops_timing
    skip
    timer = Timer.new
    assert_equal ??, timer.stop
  end

  def test_it_tracks_duration
    timer = Timer.new
    timer.start
    sleep(2.0)
    assert_equal "00 minutes 02 seconds", timer.clock
  end

end
