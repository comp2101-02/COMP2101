#!/bin/bash
# second version of guessing game
# limits user to 4 guesses maximum

secretnumber=$(($RANDOM % 10 +1))
for (( numguesses=0 ; numguesses < 4 ; numguesses++ )); do
  read -p "Give me a number from 1 to 10: " userguess
  if [ -z "$userguess" ]; then
    echo "You didn't give me something."
    echo "I guess you don't want to play."
    break
  elif [ $userguess -lt $secretnumber ]; then
    echo "Too low."
    continue
  elif [ $userguess -gt $secretnumber ]; then
    echo "Too high."
    continue
  else
    echo "You win!"
   exit
  fi
done
echo "You can always get it in less than 4 guesses or less"
echo "Better luck next time."
