#!/bin/bash
mathfunc() {
    amount=0
    product=1
    for args in $@; do
        let amount+=$args
        ((product*=$args))
    done
    echo "Sum: $amount"
    echo "Prod: $product"
}
mathfunc $@