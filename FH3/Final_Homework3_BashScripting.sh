#!/bin/bash
# duplicate column "name"
# P.s. A bug in GNU Awk version 4.0.2 with FPAT duplicates the comma, so we may get an empty column
cat accounts.csv | awk 'BEGIN {OFS=","; FPAT="([^,]*)|(\"[^\"]+\")"} {$5=$5 "," $5} 1' > accounts_temp.csv
sed -i 's/name/userid/2' accounts_temp.csv
cat accounts_temp.csv | awk 'BEGIN {OFS=","; 
                                   FPAT="([^,]*)|(\"[^\"]+\")"} {
    $6 = tolower($6)
    split($6, userid)
        for (m in userid) {
           sub(userid[m], substr(userid[m], 1, 1)gensub(/.*\ /, "", "g", substr(userid[m], 2)), $6)
        }
# Check duplicates userid and add number after userid
        for (k in userid) {
            split($6, userid)
            (userid[k] in array) ? sub(userid[k], userid[k]array[userid[k]], $6) : $6; array[userid[k]]++
        }    
} 1' > accounts_new.csv
rm accounts_temp.csv 