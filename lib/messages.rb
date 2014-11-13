require_relative 'game'
require_relative 'guess_checker'

class Messages
  def intro
    "Welcome to MasterMind."
  end

  def intro_command
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def game_intro
    "I have generated a sequence with four elements made up of: (r)ed,
     (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
  end

  def game_instructions
    "The object of the game is for you to determine the colors and positions of
the colors in my 4-digit color code using the colors red, green, blue and
yellow. Not all colors have to be used. Good luck!"
  end

  def not_a_valid_command
    "Invalid command. Please select (p)lay, read the (i)nstructions, or (q)uit."
  end

  def game_prompt
    "What is your guess?"
  end

  def too_short
    "Your code is too short. Please enter a 4-digit code."
  end

  def too_long
    "Your code is too long. Please enter a 4-digit code."
  end

  def invalid_letters
    "Your code contains invalid letter. Please use a combination of the letters r, g, b or y."
  end

  def win
    "You guessed the code! You win!"
  end

  def no_matches
    "Your guess contains no color or position matches."
  end

  def color_and_position_matches(color_match, position_match)
    "Your code contains #{position_match} correct positions and #{color_match} correct colors."
  end

  def turns(turns)
    if turns == 1
      "You have taken #{turns} turn."
    else
      "You have taken #{turns} turns."
    end
  end

  def exit
    "Exiting Mastermind."
  end
end
