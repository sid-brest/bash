#!/bin/bash

# Declare an associative array with Roman numerals as keys and their values
declare -A roman_values=(
    [I]=1
    [V]=5
    [X]=10
    [L]=50
    [C]=100
    [D]=500
    [M]=1000
)

roman_to_arabic() {
    local roman=$1
    local -i result=0

    # Process each Roman numeral
    for (( i=0; i<${#roman}; i++ )); do
        char=${roman:$i:1}
        val="${roman_values[$char]}"

        # Look ahead to the next character
        next_char=${roman:$i+1:1}
        next_val="${roman_values[$next_char]}"

        # If next value is larger, this is a subtractive pairing
        if [[ $val -lt $next_val ]]; then
            let result-=val
        else
            let result+=val
        fi
    done

    echo $result
}

# User interaction
read -rp "Enter a Roman numeral: " roman_input
arabic_output=$(roman_to_arabic "$roman_input")
echo "Arabic numeral: $arabic_output"