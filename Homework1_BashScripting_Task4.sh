#!/bin/bash
HomeDir=$HOME
UserName=$(whoami)
UserID=$(id -u)
GroupInfo=$(id | awk '{print $2}' | sed -e's/gid=//g')
Term=$(tty --version | sed '1!d' | awk '{print $3}' | sed -e's/)//g')
CurDir=$(pwd)
DateTime=$(LANG=en_us_88591; date -u)

echo "Home dir: $HomeDir"
echo "User Name: $UserName"
echo "User ID: $UserID($UserName)"
echo "Group Information: $GroupInfo"
echo "Terminal: $Term"
echo "Current directory: $CurDir"
echo "System date/time: $DateTime"