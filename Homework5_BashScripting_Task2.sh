#!/bin/bash
partycheck() {
    if [ $1 -lt 18 ] && [[ $2 == "yes" ]]; then
        echo "You may go but must be back before midnight."
    elif [ $1 -ge 18 ]; then
        echo "You may go to the party."
    else 
        echo "You cannot go to the party."
    fi
}
partycheck $1 $2