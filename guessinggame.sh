#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
  echo $(ls -1 | wc -l)
}

# Main script
files=$(count_files)
guess=0

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Loop until the correct guess is made
while [[ $guess -ne $files ]]; do
  read -p "Enter your guess: " guess
  if [[ $guess -lt $files ]]; then
    echo "Your guess is too low. Try again!"
  elif [[ $guess -gt $files ]]; then
    echo "Your guess is too high. Try again!"
  fi
done

echo "Congratulations! You guessed the correct number of files: $files"
