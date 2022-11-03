# cat data.csv | awk 'BEGIN {FS=OFS=","};
#     NR > 1 {
#         split($3, name)
#         $4 = tolower($3)
#         split($4, login)
#         for (k in login) {
#             !a[login[k]]++ ? sub(login[k], login[k]"@mail.com", $4) : sub(login[k], tolower($2)login[k]"@mail.com", $4)
#         }
#     }; 1' > data_new.csv 

awk 'BEGIN {FS=OFS=","};
  NR == FNR { ++seen[$3]; next }
  FNR > 1 { $4 = (seen[$3] > 1 ? tolower($2) : "") tolower($3) "@mail.com" }
  1' data.csv data.csv >data_new.csv