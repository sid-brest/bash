#!/bin/bash
cat /etc/group | cut -d ':' -f 1
# compgen -g