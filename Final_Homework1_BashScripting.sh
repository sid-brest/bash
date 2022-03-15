#!/bin/bash
cat accounts.csv | awk 'BEGIN {OFS=FS=","};
    # Perform the action for lines starting from the 2nd
   NR > 1 {
    # Divide string into pieces separated by fieldsep to array
        split($5, names, " ")
    # Check if the user has email, and if not, add
        if ($7!~/@/) {
            $7 = tolower($5)"@abc.com"
        }
    # Toupper first letters
        for (i in names) {
            sub(names[i], toupper(substr(names[i], 1, 1))substr(names[i], 2), $5)
        }
    # Select the array value as original string
            split($7, email)
    # Leave name first letter & remove strings before last name
        for (m in email) {
                sub(email[m], substr(email[m], 1, 1)gensub(/.*\ /, "", "g", substr(email[m], 2)), $7)
    # Check duplicates and add number after username
                (email[m] in array) ? sub(/@/, array[email[m]]"@", $7) : $7; array[email[m]]++
        }        
}; 1' > accounts_new.csv