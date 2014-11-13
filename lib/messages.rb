require_relative 'game'
require_relative 'guess_checker'

class Messages
  def intro
    "Welcome to Mastermind."
  end

  def intro_command
    "Would you like to play to the death? (p)lay, read the (i)nstructions, or (q)uit"
  end

  def game_intro
    "I have generated a sequence with four elements made up of: (r)ed,
     (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
  end

  def game_instructions
    "The object of the game is for you to determine the colors and positions of
the colors in my 4-letter color code using the colors (r)ed, (g)reen, (b)lue and
(y)ellow. Not all colors have to be used. If you lose, you will be mauled by a lion. Good luck!"
  end

  def not_a_valid_command
    "GRRRRRRR. Invalid command. Please select (p)lay, read the (i)nstructions, or (q)uit."
  end

  def game_prompt
    "The lion is hungry. What is your guess?"
  end

  def too_short
    "GRRRRRRR. Your code is too short. Please enter a 4-letter code using r, g, b and y."
  end

  def too_long
    "GRRRRRRR. Your code is too long. Please enter a 4-letter code using r, g, b and y."
  end

  def invalid_letters
    "GRRRRRRR. Your code contains invalid letters. Please use a combination of the letters r, g, b and y."
  end

  def win
    <<-EOF
           ,aodObo,
        ,AMMMMP~~~~
     ,MMMMMMMMA.
   ,M;'     `YV'
  AM' ,OMA,
 AM|   `~VMM,.      .,ama,____,amma,..
 MML      )MMMD   .AMMMMMMMMMMMMMMMMMMD.
 VMMM    .AMMY'  ,AMMMMMMMMMMMMMMMMMMMMD
 `VMM, AMMMV'  ,AMMMMMMMMMMMMMMMMMMMMMMM,                ,
  VMMMmMMV'  ,AMY~~''  'MMMMMMMMMMMM' '~~             ,aMM
  `YMMMM'   AMM'        `VMMMMMMMMP'_              A,aMMMM
   AMMM'    VMMA. YVmmmMMMMMMMMMMML MmmmY          MMMMMMM
  ,AMMA   _,HMMMMmdMMMMMMMMMMMMMMMML`VMV'         ,MMMMMMM
  AMMMA _'MMMMMMMMMMMMMMMMMMMMMMMMMMA `'          MMMMMMMM
 ,AMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMa      ,,,   `MMMMMMM
 AMMMMMMMMM'~`YMMMMMMMMMMMMMMMMMMMMMMA    ,AMMV    MMMMMMM
 VMV MMMMMV   `YMMMMMMMMMMMMMMMMMMMMMY   `VMMY'  adMMMMMMM
 `V  MMMM'      `YMMMMMMMV.~~~~~~~~~,aado,`V''   MMMMMMMMM
    aMMMMmv       `YMMMMMMMm,    ,/AMMMMMA,      YMMMMMMMM
    VMMMMM,,v       YMMMMMMMMMo oMMMMMMMMM'    a, YMMMMMMM
    `YMMMMMY'       `YMMMMMMMY' `YMMMMMMMY     MMmMMMMMMMM
     AMMMMM  ,        ~~~~~,aooooa,~~~~~~      MMMMMMMMMMM
       YMMMb,d'         dMMMMMMMMMMMMMD,   a,, AMMMMMMMMMM
        YMMMMM, A       YMMMMMMMMMMMMMY   ,MMMMMMMMMMMMMMM
       AMMMMMMMMM        `~~~~'  `~~~~'   AMMMMMMMMMMMMMMM
       `VMMMMMM'  ,A,                  ,,AMMMMMMMMMMMMMMMM
     ,AMMMMMMMMMMMMMMA,       ,aAMMMMMMMMMMMMMMMMMMMMMMMMM
   ,AMMMMMMMMMMMMMMMMMMA,    AMMMMMMMMMMMMMMMMMMMMMMMMMMMM
 ,AMMMMMMMMMMMMMMMMMMMMMA   AMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
AMMMMMMMMMMMMMMMMMMMMMMMMAaAMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
You escape this time! You win!
    EOF
  end

  def no_matches
    "Your guess contains no color or position matches. The lion may pounce!"
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

  def clock(time)
    "It took you #{time} to escape the lion. RAWR."
  end

  def exit
    puts "I see you're scared. Exiting Mastermind."
    abort
  end
end
