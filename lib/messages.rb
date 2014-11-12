class Messages
  def intro
    "Welcome to MasterMind. Would you like to play to the death?"
    # game_instructions
  end

  def too_short
    "Your code is too short. Please enter a 4-digit code."
  end

  def too_long
    "Your code is too long. Please enter a 4-digit code."
  end

  def wrong_letters
    "Your code contains invalid letter. Please use a combination of the letters r, g, b or y."
  end

  def win
    "You guessed the code! You win!"
  end

  def no_matches
    "Your guess contains no color or position matches."
  end

  def color_and_position_matches
    "Your code contains #{:position} correct positions and #{:color} correct colors."
  end

  def exit
    "Bye."
  end
end
