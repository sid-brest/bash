# Use <sudo systemctl stop\start httpd> to stop\start service
#!/bin/bash
StatusCheck=$(ps -ef | grep [h]ttpd])
HttpdSearch="httpd"
if [[ "$StatusCheck" == *"$HttpdSearch"* ]] ; then
    echo "This machine is running a web server."
else
    echo "This machine is NOT running a web server."
fi
echo $StatusCheck