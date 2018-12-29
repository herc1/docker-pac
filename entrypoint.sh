#!/bin/bash

yes | cp -f /opt/apache2/*.conf /etc/apache2/sites-available/
yes | cp -f /opt/apache2/conf-available/*.conf /etc/apache2/conf-available/

while true; do
 if [ $(pgrep apache2 | wc -l) -eq 0 ]
 then
  echo "apache2 is not running! Starting"
  apache2-foreground &
 fi
 if [ $(pgrep cron | wc -l) -eq 0 ]
 then
  echo "cron is not running! Starting"
  cron -f &
 fi
 sleep 5
done