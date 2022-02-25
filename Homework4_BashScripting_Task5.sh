#!/bin/bash
magicNumber=$(( $RANDOM % 100 ))
while :
do
    read userinput
    if [ $userinput -lt $magicNumber ]; then
        echo "less"
    elif [ $userinput -gt $magicNumber ]; then
        echo "greater"
    else
        echo "You win!"
    fi
done