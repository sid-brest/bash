#!/bin/bash
mypath=$(pwd)
echo ${mypath}
echo ${mypath/home*/home/$USER}