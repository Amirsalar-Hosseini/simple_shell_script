#!/bin/bash



password_length=$1

tr -dc "a-zA-Z0-9" < /dev/urandom | head -c ${password_length}

echo
