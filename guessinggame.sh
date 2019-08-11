#!/usr/bin/env bash
# File: guessinggame.sh

function guess_files_number {
  local files_number
  local try_again
  files_number=$(ls -al | grep "^-" | wc -l)
  try_again=1
  while [[ $try_again -eq 1 ]]
  do
    echo "How many files are in the current directory?"
    read guess_number
    if [[ guess_number -gt files_number ]]
    then
      echo "Your guess is too high, try again..."
    elif [[ guess_number -lt files_number ]]
    then
      echo "Your guess is too low, try again..."
    else
      echo "Congratulations! You guessed the right number!"
      let try_again=0
    fi
  done
}
guess_files_number
