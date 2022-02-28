#!/bin/bash
 function rand() {
    echo $(($RANDOM % ${1}))
}
for item in `seq 1 10`
do
    value="$(rand 100)"
    echo "[$item] => ${value}"
done | \
# Read array from pipe and save to temp file
(mapfile OUTPUTARRAY; printf "%s" "${OUTPUTARRAY[@]}") > tmp1
cat tmp1
# Leave only the numbers in the array
cat tmp1 | cut -d ' ' -f3 > tmp2
readarray -t NUMBERARRAY < tmp2
min=${NUMBERARRAY[0]}
max=${NUMBERARRAY[0]}
sum=0
for i in "${NUMBERARRAY[@]}"; do
  (( i > max )) && max=$i
  (( i < min )) && min=$i
#   Let add each item to the total count
  let sum+=$i
done
echo "min=$min"
echo "max=$max"
echo "sum=$sum"
rm tmp1 tmp2