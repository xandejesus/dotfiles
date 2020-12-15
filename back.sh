#!/bin/bash
# Background script for WSL
# It's pretty cool I guess
cd ~/termbackgrounds
i=0
arrPics=()
for file in *.jpg *.png
do 
	i=$(($i + 1))
	arrPics+=("$file")
done
echo "$i"
if [ $# -eq 1 ]
then
	l=0
	d="${1//[$'\t\r\n']}"
	echo "$d"
	while [ "$l" -lt "$i" ] && [ "${arrPics[$l]}" == "$d" ]
	do 
		l=$(($l + 1))
	done
	if [ "$l" -ne "$i" ]
	then 
		cleanstring="roaming/"
		cleanstring+="$d"
		cleanstring+="\","
		sed -i --follow-symlinks "s@roaming.*@$cleanstring@" "settings"
		exit 0
	fi
else
	r=$(( $RANDOM % $i))
	echo "$r"
	echo "${arrPics[23]}"
	s=${arrPics[$r]}
	echo "$s"
	p="roaming/"
	p+="$s"
	p+="\","
	echo "$p"
	sed -i --follow-symlinks "s@roaming.*@$p@" "settings"
	#s=${arrpics[r]}
	#echo "$s"
fi
