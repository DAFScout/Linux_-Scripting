# !/bin/bash

interr=$(echo '___________________________________________________________________________________________________________________________________________________________________________________________')

function pc_details(){
	echo $interr
	echo "Version"
	echo " "
	cat /etc/os-release
	echo $interr
	echo "Command uname"
	echo " "
	uname
	echo $interr
	echo "Command ifconfig"
	echo " "
	ifconfig
	echo $interr
	echo "Command ip addr show"
	echo " "
	ip addr show
	echo $interr
	echo "Command sudo ufw status verbose"
	echo " "
	sudo ufw status verbose
	echo $interr
	echo "resolv.conf file"
	echo " "
	cat /etc/resolv.conf
	echo $interr
	echo "sysctl.conf file"
	echo " "
	cat /etc/sysctl.conf
	echo $interr
}
pc_details > output.txt 

