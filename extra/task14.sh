#!/bin/bash
argsfunc() {
    local args=($@)
    counter=0
    # write elements of array with counter 
        for args in ${args[@]}; do
            let counter++
            echo "Arg$counter: $args"
        done
    local argsforloop=($@)
    # sum near elements in array
        for (( i=0; i<${#argsforloop[@]}-1; i++ )); do
            echo -n "$((${argsforloop[$i]} + ${argsforloop[$i+1]})) "
        done
    # just create new line
        echo -e
 }
argsfunc $@