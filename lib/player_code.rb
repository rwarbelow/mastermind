class PlayerCode
    attr_reader :instream
    
  def initialize(instream)
     @instream = instream
  end

  def to_a
    instream.split('')
  end
end
