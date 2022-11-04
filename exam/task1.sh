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
     # Create email
            $5 = tolower($3)
     # Select the array value as original string
             split($5, email, ".")
     # Leave name first letter & remove strings and whitespace before last name
         for (m in email) {
                 sub(email[m], substr(email[m], 1, 1)gensub(/.*[[:blank:]]/, "", "g", substr(email[m], 2)), $5)
        }        
}; 1' > temp.csv
fi
# Count the number of occurrences of $5 in seen for the second pass. 
# Then in the second pass, we can just look at the current entry in seen to figure out whether or not we need to add the prefix.
awk 'BEGIN {FS=OFS=","; FPAT="([^,]*)|(\"[^\"]+\")"};
  NR==FNR { ++seen[$5]; next }
  FNR > 1 {
    $5 = (seen[$5] > 1 ? $5$2 : $5)"@mail.com"
} 1' temp.csv temp.csv > $OutputPath
rm temp.csv