#!/bin/bash
array=$(seq 1 100)
for item in ${array}; do
  if [ $(expr $item % 2) -eq 0 ] && [ $item -lt 30 ]; then
    echo $item
  elif [ $(expr $item % 2) -eq 0 ] && [ $item -gt 60 ]; then
    echo $item
  elif [ $item -gt 85 ]; then
    break
  fi
done