require_relative 'code_maker'

class GuessChecker
  attr_reader :player_code, :game_code, :compare, :result, :position_match, :color_match

  def initialize(player_code, game_code)
     @player_code = player_code
     @game_code = game_code
  end

  def color_match
      @player_code.count { |color| @game_code.include?(color) } - position_match
  end

  def position_match
    @player_code.zip(@game_code).count { |player, game| player == game }
  end

  def compare
    if @player_code == @game_code
      true
    else
      @result = { :color => self.color_match, :position => self.position_match }
    end
  end

end
