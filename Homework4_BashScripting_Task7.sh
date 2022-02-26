#!/bin/bash
touch file1 file2 file3 file4 file5
currentdir=pwd
for file in $currentdir; do
  find -name 'file*' -type f -printf "Filename: %f, Owner: %u\n" | sort
done