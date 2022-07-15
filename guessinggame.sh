#!/bin/bash

guessingGame(){
  numFiles=$(ls -l |grep "^-"|wc -l)
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
            echo "congratulation !, Your are correct .";
            break;
        fi
    done

}

echo "How many files are in the directory?";
guessingGame
