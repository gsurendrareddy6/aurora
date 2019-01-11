#!/bin/bash
LOGFILE=/var/log/app_install.log
echo "`date +%H:%M:%S` : Starting installation" >> $LOGFILE
sudo apt-get update && sudo apt-get install nginx -y
echo "`date +%H:%M:%S` : completed installation" >> $LOGFILE