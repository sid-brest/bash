#!/bin/bash
cat accounts.csv | awk '
    BEGIN {OFS=FS=","};
    NR>1{
        $column5 = tolower($5);
        split($column5, names, " ");
        for(i in names)
            sub(names[i], toupper(substr(names[i], 1, 1))substr(names[i], 2), $5)
    }1' > accounts_new.csv