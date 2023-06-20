#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

echo "Enter your username:"
read USERNAME
NAME_REGISTERED=$($PSQL "SELECT name FROM users WHERE name='$USERNAME'")

GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM users INNER JOIN game_info USING(user_id) WHERE name='$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(guess_count) FROM users INNER JOIN game_info USING(user_id) WHERE name='$USERNAME'")

if [[ ${#USERNAME} -gt 22  ]]
then
  echo "Please enter your username no more than 22 characters."
  else
  if [[ -z $NAME_REGISTERED ]]
  then
    ADD_USERNAME=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME') ")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    else
      echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  fi
fi

RANDOM_NUM=$((RANDOM % 1000 + 1))
echo $RANDOM_NUM
GUESS_COUNT=1
echo "Guess the secret number between 1 and 1000:"

while read GUESS_NUM
do
  case $GUESS_NUM in
    ''|*[!0-9]*)
      echo "That is not an integer, guess again:"
      ;;
    $RANDOM_NUM)
      break
      ;;
    *)
      if [[ $GUESS_NUM -gt $RANDOM_NUM ]]
      then
        echo "It's lower than that, guess again:"
      else
        echo "It's higher than that, guess again:"
      fi
      ;;
  esac
  GUESS_COUNT=$((GUESS_COUNT + 1))
done

if [[ $GUESS_COUNT == 1 ]]
then
  echo "You guessed it in $GUESS_COUNT tries. The secret number was $RANDOM_NUM. Nice job!"
  else
    echo "You guessed it in $GUESS_COUNT tries. The secret number was $RANDOM_NUM. Nice job!"
fi

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME'")
ADD_GAME_INFO=$($PSQL "INSERT INTO game_info(guess_count, user_id) VALUES($GUESS_COUNT, $USER_ID)")
