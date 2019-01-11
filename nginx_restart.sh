LOGFILE=/var/log/nginx_restart.log
echo "`date +%H:%M:%S : Starting cronjob" >> $LOGFILE

#!/bin/bash
LOGFILE=/var/log/nginx_restart.log
echo "`date +%H:%M:%S` : Starting cronjob" >> $LOGFILE
service nginx restart >> $LOGFILE 2>&1
RESULT=$?
if [ $RESULT -eq 0 ]; then
  echo "`date +%H:%M:%S` : nginx is success to restart" >> $LOGFILE
else
  echo "`date +%H:%M:%S` : nginx is failed to restart" >> $LOGFILE
fi
service nginx status >> $LOGFILE 2>&1

