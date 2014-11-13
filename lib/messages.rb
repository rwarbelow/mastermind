require_relative 'game'
require_relative 'guess_checker'

class Messages
  def intro
    "Welcome to Mastermind."
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
    "Your code is too short. Please enter a 4-letter code using r, g, b and y."
  end

  def too_long
    "Your code is too long. Please enter a 4-letter code using r, g, b and y."
  end

  def invalid_letters
    "Your code contains invalid letters. Please use a combination of the letters r, g, b and y."
  end

  def win
    <<-EOF
    Mr. Potato Head says, "You win!""
                                         .:::::::::.
                                  .:::::::::::::::.
                                 :::::::::::::::::::
                                :::::::::::::::::::::
                             :  `:::::::::::::::::::::
                            :: >. `:::::::::::::::'''  .::
                            :: `{C>,..````````...   .::''
                            `:::..``{{{CCC>>>''..:::''.
                   .,c$$h.    `'::::::.....:::''''.,c$$L
                  J$$$$$.?. ,d$=  `````.,   .zcc$$$$$$$$.
                ,$$$$$$$F."4P".:`:: ,$$".:::. "$$$$$$$$$h   ,cc,
               ,$$$$$P".,P." '',c `,d$$ `'``':.`$$$$$$$$$h ="3$$c.
              .$$$$$F $$" dc -?""? ?$$',c$$c  ` ?$$$$$$$$F, d$$$$h.
              J$$$$$$ $F ,$',""$$h.?$',,,,."" . `$$$$$$$$ d 3$$$$$$.
              3$$$$$P $F $$    ?$$'J',$" `$$c  $$$$$$$$$P $h "$$$$$$
               ?C'.,c$P $$$    J$$ J $F   $$$h $$$$$$$$$' $$$ $$$$$$h
                `??""  ,$$$ h,c$$F.$ $h, ,$$$',$$$$$$$$$c,`$P.$$$$$$$
                      ,$$$$c`??"",c, "$$$$$P',$$$$$$$$$$$h ?L'$$$$$$P
                      $$$$$$$F zd$$$h  """',d$$$$$$$$$$$$$h`?.`??$$P'
                     J$$$$P",c$$$$$$$h."$$$$$$$$$$$$$$$$$$$h. `??"'
     ,cd$$$$$$$$$$h J$$$$",J$$$$$$$$$$$c ?$$$$$$$$$$$$$$$$$$$
   ,$$???????$$$$$F.$$$$$ $$$$$$$$$$$$$$h`$$$$$$$$$$$$$$$$$$$h
  J$P"        `""" J$$$$$c`$$$$$$$$$$$$$F,$$$$$$$$$$$$$$$$$P"'
 d$"               J$??".  `??$$$$?????" $$$$$$$$$$$$$$$$$$ J$$$$$hcc,.
J$$                J" ,','  ;    , ,. . . `"?$$$$$$$$$$$$$$ $$$$$$$$$$$$c,
3$$                J ' > .{! ;! ;!;'!> - `!.  "?$$$$$$$$$$$.'$P??""""""?$$h
`$P",nmn        .   c ' ;!! ;!! !!! '!> !; {!.`;`$$$???$$$$$c,           ?$$
 ? uMMP ,nmnmdMMM'  3$c, `  ''' {!!''!!> !> `' ,c$$F nx.?$$$$$            $$
  dMM",dMMMMMMP"'   `$$$h.`  ,____,=  `. ' ,ccc$$$$h MMMx."??"           z$$
  MP nMMMMMMMM,      ?$$$$.`\ """"" ,-' .d$$$$$$$$$$c )MMMMMn.  ..     ,c$$P
  " =MMMMMMMMMMMbm,   ?$$$$h.``````',c$$$$$$$$?????"",dMMMMMMMb;MMr .z$$$P"
     "MMMMMMMMMMMMP'   ?$$$$$$$$$$$$$$$$$$$$$ nmMMMMMMMMMMMMMMP{MMM ?$$P"
      `MMMMMMM          "$$$$$$$$$$$$$$$$$$$$."4MMMMMMMMMMMMMMb`MMM.`"
       MM4MMMMx           "??$$$$$$$$$$$$$$$$$ccc= ,MMMMMMMMMMM "MM
       4Mr "4MMr               ""?????????????"",nmMMMMMMMMMMMMP  "
       `M    `"                $|c             4MMMPPP4MMMMMMP
                               $|$              "      MMMM"
                               $|$              ;!;   dMMP'
                           ,,, "|"              ;' {! P" ;{!
                      . . .  ...  -          `" , ;,,. -'!!!.
                     ''' '.;;;;;.         ,!' ." `-._``--..`'
                    ;;;;;..```..;;;{>   ''- ...;;;.   `~- ' ;;
                  .`''!!!!!!!!''''`.;; ;;;;;;..````''-;' ,;!!'
                  ''{;;......;;;;-'`   `'!!!!!!!!!!-- ,;!!'`
                       ```````        !!;,,.````.,,;{!!'`
                                       ```''''''''''``
    EOF
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
