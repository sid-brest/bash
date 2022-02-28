#!/bin/bash
minmaxfunc() {
    local args=($@)
    local min=${args[0]}
    local max=${args[0]}
    for args in ${args[@]}; do
        (( args < min )) && min=$args
        (( args > max )) && max=$args
    done
    echo "Min: $min"
    echo "Max: $max"
}
minmaxfunc $@