require_relative 'test_helper'
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

  def test_it_ends_after_30_seconds
    timer = Timer.new
    timer.start
    asert_equal ??, time.run
  end

end
