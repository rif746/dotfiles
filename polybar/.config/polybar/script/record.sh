#!/bin/sh

if pgrep -f ffmpeg > /dev/null 2>&1; then
	blink=$(date +%s);
	if [ $((blink % 2)) -eq 0 ]; then
		echo " 壘 REC "
	else
		echo "   REC "
	fi
else
	echo " 雷 STBY "
fi

