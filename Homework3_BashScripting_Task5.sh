# Modify following script:
# Requirements:
# Script should print maximum number from generated list
# Script should print minimal number from generated list
# Script should print sum of all generated numbers
# Expected output:
# [devops@localhost ~]$ ./elements.sh
# [1] => 65
# [2] => 77
# [3] => 57
# [4] => 89
# [5] => 30
# [6] => 27
# [7] => 10
# [8] => 16
# [9] => 95
# [10] => 73
# min=10
# max=95
# sum=539
 
# [devops@localhost ~]$ cat elements.sh
# #!/bin/bash
 
# function rand() {
#     echo $(($RANDOM % ${1}))
# }
 
# for item in `seq 1 10`
# do
#     value="$(rand 100)"
#     echo "[$item] => ${value}"
# done
#  ## write your code here ##
#  [devops@localhost ~]$
#!/bin/bash