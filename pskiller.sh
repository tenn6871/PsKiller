#!/bin/bash

psn=processname #죽일 프로세서 이름

cut=$(ps -ef | grep ${psn} | grep -v grep | grep -v vim | wc -l)
#프로세서 개수 카운팅
ps=$(ps -ef | grep ${psn} | grep -v grep | grep -v vim | awk '{print $2}')
#카운팅된 개수 만큼 PID 가져오기

if [ $cut -gt 0 ] #카운팅된 PID가 0개면 exit
then 
	kill -9 $ps
	echo "$dt : $psn Killed."
else 
	echo " "
fi

