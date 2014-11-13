require_relative 'game'

class ValidateGuess
    attr_reader :player_code, :verify

  def initialize(player_code)
    @player_code = player_code
    @valid_code = ["r", "g", "b", "y"]
  end

  def verify
    if player_code - @valid_code == []
      true
    else
      false
    end
  end
end
