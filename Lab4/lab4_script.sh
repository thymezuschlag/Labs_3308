#!/bin/bash
# Authors : Thyme Zuschlag
# Date: 09/23/2020

cp /var/log/syslog /home
egrep -i ERROR  /var/log/syslog | tee error_log_check.txt
sudo echo "testing" | mutt -s "Email" -a error_log_check.txt -- thzu8653@colorado.edu 
