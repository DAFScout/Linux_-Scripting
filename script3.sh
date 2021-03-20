#!/bin/bash

interr=$(echo '_________________________________________________')

function audit(){
	echo  $interr
	echo "Command uptime"
	echo " "
	uptime
	echo  $interr
	echo "Command which display current users "
	echo " "
	compgen -u
	echo  $interr
	echo "Command which display recent users"
	echo " "
	last
	echo  $interr
	echo "Command which display TOP 10 memory usage program"
	echo " "
	ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -11
	echo  $interr
	echo "Command which display TOP 10 cpu usage program"
	echo " "
	ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -11
	echo  $interr
	echo "Command which display TCP/UPD"
	echo " "
	ss -tulpn
	echo  $interr
	echo "Command which display virtual memory usage"
	echo " "
	vmstat
	echo  $interr
	echo "Command which display usage of disk space"3
	echo " "
	free
	echo  $interr
}

audit > output.log


