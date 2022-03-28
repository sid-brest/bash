#!/bin/bash
# delete vagrant boxes on your system:
# vagrant box list | cut -f 1 -d ' ' | xargs -L 1 vagrant box remove -f
(cd ./ZabbixVM && vagrant up)
(cd ./ZabbixVM && vagrant vbguest)