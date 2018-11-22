#!/bin/bash
a=/home/student/system_monitor.csv
for((i=1;i<=10;i++))
do
	echo "$(hostname),$(date +%s),$(uptime |cut -d " " -f 13),$(free |tr -s " " | cut -d " " -f 3 |head -n 2|tail -n 1),$(cat /proc/net/dev | grep enp0s3 |tr -s " " |cut -d " " -f10),$(cat /proc/net/dev |grep enp0s3 |tr -s " " |cut -d " " -f2)">>$a
	

done
