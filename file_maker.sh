#!/bin/bash


file=$1

if [[ -f $file ]]; then
	cp /dev/null $file
else
	touch $file
fi

if [[ $? -ne 0 ]]; then
	echo "somthing...."
	exit 1
else
	echo "nothing...."
	exit 0
fi
