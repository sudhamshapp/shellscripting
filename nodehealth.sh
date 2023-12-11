#!/bin/bash
#This script outputs the node health
set -x #debug mode
set -e #exit the script, when there is an error
set -o pipefail
df -h
free -g
nproc
ps -ef | grep amazon | awk -F " " '{print $2}'