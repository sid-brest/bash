#!/bin/bash
cat accounts.csv | awk 'BEGIN {OFS=FS=","};
    # Perform the action for lines starting from the 2nd
   NR > 1 {
    # Divide string into pieces separated by fieldsep to array
        split($5, names, " ")
        $7 = tolower($5)
    # Select the array value as original string
        split($7, email)
        for (i in names) {
            sub(names[i], toupper(substr(names[i], 1, 1))substr(names[i], 2), $5)
        }
        if ($7!~/@/) {
            for (m in email) {
                sub(email[m], substr(email[m], 1, 1)gensub(/.*\ /, "", "g", substr(email[m], 2)), $7)
            }
        }
        # ($7 in array) ? $7 = $7array[$7]"@abc.com" : $7 = $7"@abc.com"; 
        # array[$7]++
    }; 1' > accounts_new.csv