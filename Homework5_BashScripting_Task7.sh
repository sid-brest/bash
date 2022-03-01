#!/bin/bash
GetFileDir=$(dirname ${BASH_SOURCE[0]})
GetFileName=$(basename ${BASH_SOURCE[0]})
echo "$(readlink -f "$GetFileDir")/$GetFileName"
echo $GetFileName