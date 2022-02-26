#!/bin/bash
# use next row to remove directories if they were created
rm -rf /tmp/file1 /tmp/file2 /tmp/dir1 /tmp/dir3 /tmp/dir3/file3
# generate file "paths"
echo -e "/tmp/file1\n/tmp/file2\n/tmp/dir1/\n\n/tmp/dir3/\n\n/tmp/dir3/file3\n" > paths
while read -r line
do
    if [ -z "${line}" ]; then
        continue
    else
        mkdir $line
    fi
done