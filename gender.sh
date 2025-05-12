#!/bin/bash

print_help(){
  echo "Usage: $0 [flags]"
  echo "Flags: "
  echo "-h for help"
  echo "-b for male greeting"
  echo "-g for female greeting"
}

optstring=":hbg"

while getopts ${optstring} options ; do
    case $options in
    b)
      gender="boy";;
    g)
      gender="girls";;
    h)
      print_help
      echit 0;;
    ?)
      echo "invalid option: ${OPTARG}"
      exit 1;;
    esac
done

if [[ -n ${gender} ]]; then
  echo "Hey ${gender}"
else
  echo "Hey there"
fi