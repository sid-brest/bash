#!/bin/bash
leanYearMonths=(31 28 31 30 31 30 31 31 30 31 30 31)
CurDate=$(LANG=en_us_88591;date | awk '{print $2 }')
if [[ "$CurDate" = "Jan" ]] ; then 
    Num=0
elif [[ "$CurDate" = "Feb" ]] ; then
    Num=1
elif [[ "$CurDate" = "Mar" ]] ; then 
    Num=2
elif [[ "$CurDate" = "Apr" ]] ; then 
    Num=3
elif [[ "$CurDate" = "May" ]] ; then 
    Num=4
elif [[ "$CurDate" = "Jun" ]] ; then 
    Num=5
elif [[ "$CurDate" = "Jul" ]] ; then 
    Num=6
elif [[ "$CurDate" = "Aug" ]] ; then 
    Num=7
elif [[ "$CurDate" = "Sep" ]] ; then 
    Num=8
elif [[ "$CurDate" = "Oct" ]] ; then 
    Num=9
elif [[ "$CurDate" = "Nov" ]] ; then 
    Num=10
elif [[ "$CurDate" = "Dec" ]] ; then 
    Num=11
fi
echo ${leanYearMonths[$Num]}