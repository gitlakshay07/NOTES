#!/bin/bash

#################################
#MetaData
#Author: Lakshay
#Date: 02-01-2026
#Version: 1.0
#Description: This script is used to check the health of the node
#################################

set -x # debug mode getting cmd name and output when run script
set -e # exit script if any command fails
set -o pipefail # exit script if any command in pipe fails


df -h
free -g
nproc

ps -ef #show all process running in system with all info

ps -ef | grep "node" #show all process running in system | with all info and filter by node

ps -f | grep "node" | awk -F " " '{print $2}' #show all process running in system | with all info and filter by node and | print only process ids

curl (error file url) | grep ERROR #check if error file is present in url and print error message
curl -X GET (url) # get request to url and print response

wget (url) # download file from url
wget (url) -> download -> grep cmd on downloaded file -> print error message

#Find specific file in system (find cmd)

sudo find / -name "node" #find specific file in system

