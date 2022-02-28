#!/bin/bash
mathfunc() {
    local amount=0
    local product=1
    for args in $@; do
        let amount+=$args
        ((product*=$args))
    done
    echo "Sum: $amount"
    echo "Prod: $product"
}
mathfunc $@