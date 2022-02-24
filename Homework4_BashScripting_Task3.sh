# You are given an array of numbers. Using only one loop perform the following tasks:
# Print only even numbers
# Don't print numbers in range [30, 60]
# Stop loop executing when number will be greater than 85
# Expected output:
# 2
# 4
# 6
#!/bin/bash
array=$(seq 1 100)
for item in ${array}; do
    for [ $item -lt 30 ]; do
        if [ $(expr $item % 2) == 0 ] && [ $item -le 85 ]; then
          echo $item
        fi
    done
done