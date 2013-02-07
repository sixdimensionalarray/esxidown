#!/bin/sh
# Runs a shell command asynchronously.

if [ "$1" != "" ]; then
    nohup sh $1 > /dev/null 2>&1 &
fi