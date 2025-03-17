#!/bin/bash



# while true; do
#	read -p "everything ok?" reply
#
#	if [[ ${reply} == "yes" ]]; then
#		echo "pas bro safa kon"
#		exit 0
#	elif [[ ${reply} == "no" ]]; then
#		echo "KILL YOURSELF :D"
#		exit
#	else
#		echo "speak human language...."
#	fi
# done


counter=$1

until [[ ${counter} -gt $2 ]]; do
	echo "${counter} noch"
	(( counter++ ))
done

names=$3

for name in $names; do
	echo "${name} is cow"
done
