#!/bin/bash

USER=$1
echo $USER
# ps -ef | egrep "python|PID"

# ps -u eric | egrep "python|PID"
ps -u $USER | egrep "python|PID"