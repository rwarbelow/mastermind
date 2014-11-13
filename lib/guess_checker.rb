require_relative 'code_maker'  # => true

class GuessChecker
  attr_reader :player_code, :game_code, :compare, :result, :position_match, :color_match  # => nil

  def initialize(player_code, game_code)
     @player_code = player_code
     @game_code = game_code
  end

  def position_match
    player_code.zip(game_code).count { |player, game| player == game }
  end

  def color_match
    # player_code.count { |color| game_code.include?(color) } #- position_match
    player = Hash.new 0
    game   = Hash.new 0
    player_code.each_with_object(player) { |color, counts| counts[color] += 1 }
    game_code.each_with_object(game) { |color, counts | counts[color] += 1 }
    player_1 = player.select{|color, _| game.has_key? color}
    player_1.length
  end

  def compare
    if player_code == game_code
      true
    else
      @result = { :position => self.position_match, :color => self.color_match }
    end
  end

end
