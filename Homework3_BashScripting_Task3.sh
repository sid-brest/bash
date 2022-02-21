# Develop a script called 03-which-daemon.sh that checks if the httpd and init daemons are running on your system. If an httpd is running, the script should print a message like, "This machine is running a web server." Use ps to check on processes
#  Example of script execution:
# [devops@localhost ~]$ ps -ef | grep [h]ttpd
# apache   27906 29214  0 Sep29 ?    00:00:00 /usr/sbin/httpd -DFOREGROUND
# root     29214     1  0 Sep27 ?    00:00:35 /usr/sbin/httpd -DFOREGROUND
# [devops@localhost ~]$
# [devops@localhost ~]$ ./03-which-daemon.sh
# This machine is running a web server.
# [devops@localhost ~]$
#!/bin/bash