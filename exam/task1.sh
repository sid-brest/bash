#!/bin/bash
    # Check empty argument 
if [ -z "$1" ]; then
    echo "No argument provided. Type path, please!"
else
    path="$1"
    InputFileName="accounts.csv"
    OutputFileName="accounts_new.csv"
    InputPath="$1/$InputFileName"
    OutputPath="$1/$OutputFileName"
    cat $InputPath | awk 'BEGIN {OFS=",";
     # Definite fields by Content with commas 
                                FPAT="([^,]*)|(\"[^\"]+\")"};
     # Perform the action for lines starting from the 2nd
    NR > 1 {
     # Divide string into pieces separated by fieldsep to array
         split($3, name, " ")
     # Toupper first letters
         for (i in name) {
             sub(name[i], toupper(substr(name[i], 1, 1))substr(name[i], 2), $3)
         }
     # Check if the user has email, and if not, add
         if ($5!~/@/) {
             $5 = tolower($3)$2"@abc.com"
     # Select the array value as original string
             split($5, email, ".")
     # Leave name first letter & remove strings and whitespace before last name
         for (m in email) {
                 sub(email[m], substr(email[m], 1, 1)gensub(/.*[[:blank:]]/, "", "g", substr(email[m], 2)), $5)
                 }
         }        
}; 1' > $OutputPath 
fi