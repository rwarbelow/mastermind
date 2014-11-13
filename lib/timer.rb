class Timer
  attr_reader :start, :clock
def initialize
   @start = start
   @clock = clock
   @time  = 0
end

  def start
    @start = Time.now
  end

  def clock
    time = (Time.now - @start)
    Time.at(time).gmtime.strftime('%M minutes andq %S seconds')
  end
end
