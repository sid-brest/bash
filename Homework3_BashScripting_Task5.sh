# min=10
# max=95
# sum=539
#!/bin/bash
 function rand() {
    echo $(($RANDOM % ${1}))
}

for item in `seq 1 10`
do
    value="$(rand 100)"
    echo "[$item] => ${value}"
done | \
( mapfile; printf "%s" "${MAPFILE[@]}" )
# sed -i 's/[*] => //g'
echo "min=$min"
echo "max=$max"
echo "sum=$sum"
