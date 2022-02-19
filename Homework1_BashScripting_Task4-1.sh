#!/bin/bash
HomeDir="$HOME"
UserName="$(whoami)"
UserID="$(id -u)"
GroupInfo=
Term=
CurDir=
DateTime=

echo "Home dir: $HomeDir"
echo "User Name: $UserName"
echo "User ID: $UserID"
echo "Group Information: $GroupInfo"
echo "Terminal: $Term"
echo "Current directory: $CurDir"
echo "System date/time: $DateTime"