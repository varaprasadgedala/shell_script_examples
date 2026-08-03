#!/bin/bash

#####################

#Author : Varaprasad

#Date : 03/08/2026

#This script outputs the node health

#Version : v1

#####################

set -x #debug mode
set -e #exit's the script when there is an error
set -o #pipe fail



#disk space
#echo print the disk space
df -h 

#echo print the memory
#memory
free -g

#echo print the cpu
#cpu
nproc

#gives the amazon processors id's 
ps -ef |grep amazon |awk -F" " '{print$2}'
