#!/usr/bin/env bash

# Function to ask the user
function ask_guess {
    echo "How many files are in the current directory?"
    read guess
}

# Count files in the current directory
correct=$(ls -1 | wc -l)

echo "Welcome to the Guessing Game!"
ask_guess

# Loop until user finds the correct answer
while [[ $guess -ne $correct ]]
do
    if [[ $guess -lt $correct ]]
    then
        echo "Too low! Try again."
    else
        echo "Too high! Try again."
    fi
    ask_guess
done

echo "Congratulations! $guess is the correct answer!"
