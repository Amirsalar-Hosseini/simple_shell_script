#!/bin/bash


colorful(){
	if [[ $# -ne 2 ]]; then
		echo 'two arguments'
		exit 1
	fi

	local string=$1
	local color=$2

	if [[ $color = 'red' ]]; then
		local color_code='\e[31m'
	elif [[ $color = 'blue' ]]; then
		local color_code='\e[34m'
	elif [[ $color = 'green' ]]; then
		local color_code='\e[32m'
	else
		local color_code='\e[39m'
	fi

	echo -e "${color_code}${string}\e[0m"
}

read -p "whats your string? : " string
read -p "what color do you want? : " color

colorful $string $color
