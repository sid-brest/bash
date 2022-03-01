#!/bin/bash
if ! (ps -ef | grep "[s]leep 180"); then
    sleep 180
fi