#!/bin/bash
# Authors : Giles Wootton
# Date: 09/18/2020


cd //var/log/
cp syslog /home
cd //home
egrep --color=always "Error" syslog | tee error_log_check.txt
sendmail giwo3748@colorado.edu < error_log_check.txt
