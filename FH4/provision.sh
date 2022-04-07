#!/bin/bash
whatinstall() {
  read -p "$1"": " input
    if [[ $input == "server" ]]; then
        (cd ./NFS && vagrant up server --provision)
    elif [[ $input == "client" ]]; then
        (cd ./NFS && vagrant up client --provision)    
    else
        echo "Please type 'server' or 'client'" 
    fi
}
whatinstall "Select what to configure"
# сheck if blank answer is sent
   if [ -z $input ]; then
        echo "Parameter is empty. Restart the shell script"
   fi 