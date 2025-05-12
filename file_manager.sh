#!/bin/bash

print_help(){
  echo "Usage: $0 [flags] <file-name>"
  echo "Flags: "
  echo "No flags for file listing"
  echo "-d for delete the file"
  echo "-e for empty the file"
  echo "-m <new-file-name> to rename the file"
  echo "-h for help"
}

command="ls -l"
optstring=':dem:h'

while getopts ${optstring} options; do
  case ${options} in
    d)
      command='rm -f';;
    e)
      command='cp /dev/null';;
    m)
      new_file=${OPTARG}; command='mv';;
    h)
      print_help exit 0;;
    :)
      echo "-${OPTARG} requires an argument"; exit 1;;
    ?)
      echo "Invalid option: -${OPTARG}" exit 1;;
    esac
done

shift $(( ${OPTIND} - 1))
file_name=$1

if [[ $# -ne 1 || ! -w ${file_name} ]]; then
  echo "supply a writable file to manipulate"
  exit 1
fi

if [[ -n ${new_file} ]]; then
  ${command} ${file_name} $(dirname ${file_name})/${new_file}
else
  ${command} ${file_name}
fi