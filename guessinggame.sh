#!/usr/bin/env bash

echo "How many files are in the directory?";
numFiles=$(ls -l |grep "^-"|wc -l)
echo $numFiles
while true;
do
    echo "please enter your guess";
    read  guess
    if [ $guess -lt $numFiles ] 
    then
        echo "Guess was too low";
    elif [ $guess -gt $numFiles ]
    then
        echo "Guess was too high";
    else
        echo "congratulation !, guess was correctly guessed .";
        break;
    fi
done