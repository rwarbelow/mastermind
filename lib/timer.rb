class Timer
  attr_reader :start, :clock, :check
def initialize
   @start = start
   @clock = clock
   @time  = 0
   @check = 0
end

  def start
    @start = Time.now
  end

  def check
    time = (Time.now - @start)
    Time.at(time).gmtime.strftime('%M:%S')
  end

  def clock
    time = (Time.now - @start)
    Time.at(time).gmtime.strftime('%M minutes andq %S seconds')
  end
end
