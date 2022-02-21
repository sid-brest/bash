# Write a script that executes the command cat /etc/shadow. If the command return a 0 exit status, report Command succeeded and exit with a 0 exit status. If the command returns a non-zero exit status, report Command failed and exit with a 1 exit status.
# Expected output:
# [devops@localhost ~]$ ./03-get-shadow.sh
# Command failed
# [devops@localhost ~]$ sudo ./03-get-shadow.sh
# Command succeeded
#!/bin/bash