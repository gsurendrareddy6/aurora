#!/bin/bash
sudo su -
LOGFILE=/var/log/app_install.log
echo "`date +%H:%M:%S` : Starting installation" >> $LOGFILE
sudo apt-get update && sudo apt-get install nginx -y
echo "`date +%H:%M:%S` : completed installation" >> $LOGFILE
git clone https://github.com/gsurendrareddy6/aurora.git /home/ubuntu/aurora
echo "`date +%H:%M:%S` : completed git clone. current working directory `pwd`" >> $LOGFILE
cd /home/ubuntu/aurora
echo "`date +%H:%M:%S` : current working directory `pwd`" >> $LOGFILE
cp -p /etc/nginx/sites-available/default /etc/nginx/sites-available/default_`date +%H:%M:%S`
cp /home/ubuntu/aurora/nginx/default /etc/nginx/sites-available/default
service nginx restart
echo "`date +%H:%M:%S` : nginx service restarted " >> $LOGFILE
service nginx status >> $LOGFILE 2>&1