#!/bin/bash

check_integer(){
  if [[ $# -ne 1 ]]; then
    echo 'must send me 1 or more arguments'
    exit 1
  fi
    
  if [[ $1 =~ ^[[:digit:]]+$ ]]; then
    echo 'that`s integer!'
  else
    echo 'not integer'
  fi
}

check_integer $1