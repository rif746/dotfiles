#!/bin/sh

case $1 in
	"memory") 
		MEM=$(free -m | grep Mem | awk '{print $3}')
		echo " $MEM MB"
		;;
	"network") 
		IP=$(hostname -i | awk '{print $1}')
		ip addr show dev wlp3s0 | grep inet &> /dev/null \
			&& echo " $IP" || echo " Disconnected"
		;;
	"volume")
		VOL=$(amixer sget Master | grep Left: | awk '{print $5}')
		echo "$VOL"
		;;		
	*)
		echo "Tint2"
esac
