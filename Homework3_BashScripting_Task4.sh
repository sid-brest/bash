cat /etc/shadow &> /dev/null
status=$?
if test $status -eq 0
then
	echo "Command succeeded"
else
	echo "Command failed"
fi