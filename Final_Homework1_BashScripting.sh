#!/bin/bash
cat accounts.csv | awk 'BEGIN {OFS=FS=","};
   NR > 1 {
        split($5, names, " ")
        $7 = tolower($5"@abc.com")
        split($7, email, ".")
        for (i in names) {
            sub(names[i], toupper(substr(names[i], 1, 1))substr(names[i], 2), $5)
        }
        for (m in email) {
            sub(email[m], substr(email[m], 1, 1)gensub(/.*\ /, "", "g", substr(email[m], 2)), $7)
        }
   }; 1' > accounts_new.csv