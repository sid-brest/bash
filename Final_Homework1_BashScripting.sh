#!/bin/bash
cat accounts.csv | awk 'BEGIN {OFS=FS=","};
    # Perform the action for lines starting from the 2nd
   NR > 1 {
    # Divide string into pieces separated by fieldsep to array
        split($5, names, " ")
        $7 = tolower($5"@abc.com")
    # Select the array value as original string
        split($7, email)
        for (i in names) {
            sub(names[i], toupper(substr(names[i], 1, 1))substr(names[i], 2), $5)
        }
        for (m in email) {
    # Replace from 2nd string index till space with nothing 
            sub(email[m], substr(email[m], 1, 1)gensub(/.*\ /, "", "g", substr(email[m], 2)), $7)
            }
    }; 1' > accounts_new.csv