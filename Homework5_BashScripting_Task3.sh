#!/bin/bash
dirfileinfo() {
    fileslist=( $( ls "$1" ) )
    for item in ${fileslist[@]}; do
        name=$(stat $1$item)
        type=$(stat $1$item | sed -n '2'p | awk '{print $8 " " $9}')
        permissions=$(stat $1$item | sed -n '4'p | awk '{print $2}')
            echo $name | awk '{print $1 " " $2}'
            echo "Type: $type" 
            echo "Permissions: $permissions" 
            echo "-------"
    done 
}
dirfileinfo $1