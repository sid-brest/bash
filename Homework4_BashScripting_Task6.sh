#!/bin/bash
rm -rf /tmp/file1 /tmp/file2 /tmp/dir1 /tmp/dir3 /tmp/dir3/file3
echo -e "/tmp/file1\n/tmp/file2\n/tmp/dir1/\n\n/tmp/dir3/\n\n/tmp/dir3/file3\n" > paths
sed -i '/^$/d' paths
while read -r line
do
    mkdir $line
done