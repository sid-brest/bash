#!/bin/bash
read var
while [ $var != "stop" ]; do
    echo "Hello, ${var}"
    read var
done