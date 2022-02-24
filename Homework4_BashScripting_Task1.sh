#!/bin/bash
echo {1..10}
seq -s ' ' 1 10
echo $(seq 10)
echo $(echo "for (i=1;i<=10;i++) i"| bc)