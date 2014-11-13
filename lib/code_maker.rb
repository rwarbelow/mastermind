require 'pry'

class CodeMaker
  attr_reader :colors, :code

  def initialize
     @colors  = ["r", "g", "b", "y"]
     @code    = []
  end

  def generate
    @code = []
    4.times.map do
      @code << colors.shuffle.pop
    end
    @code.flatten
  end
end
