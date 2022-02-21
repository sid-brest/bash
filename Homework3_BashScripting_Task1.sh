#!/bin/bash
leanYearMonths=(31 28 31 30 31 30 31 31 30 31 30 31)
CurDate=$(date +%m)
case $CurDate in
    01) Num=0 ;;
    02) Num=1 ;;
    03) Num=2 ;;
    04) Num=3 ;;
    05) Num=4 ;;
    06) Num=5 ;;
    07) Num=6 ;;
    08) Num=7 ;;
    09) Num=8 ;;
    10) Num=9 ;;
    11) Num=10 ;;
    12) Num=11 ;;
esac
echo ${leanYearMonths[$Num]}