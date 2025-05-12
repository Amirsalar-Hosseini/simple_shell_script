#!/bin/bash

profile_checker(){
  baseUrl="https://github.com"
  statusCode=$( curl -I -s "${baseUrl}/${username}" | grep -w "HTTP" | cut -d " " -f2 )

  if [[ $statusCode == 200 ]]; then
    echo -e "\e[32m${username} exists on github\e[0m"
  else
    echo -e "\e[31m${username} does not exists on github\e[0m"
    fi
}

username=$1

if [[ -z $1 ]]; then
  read -p "enter username: " username
fi

profile_checker