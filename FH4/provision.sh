#!/bin/bash
# delete vagrant boxes on your system:
# vagrant box list | cut -f 1 -d ' ' | xargs -L 1 vagrant box remove -f
(cd ./NFS && vagrant up server --provision)
(cd ./NFS && vagrant up client --provision)
(cd ./FNS && vagrant vbguest)