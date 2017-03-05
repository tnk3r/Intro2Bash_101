#!/usr/bin/env bash

echo "Welcome to $0"

if (( $# >= 5 )); then
	echo "Too many arguements buddy; "
	exit
else

	echo "You passed $# arguments"
fi

counter=1
for argument in $@; do
    echo "Argument #$counter: $argument"
    counter=$[$counter+1]
done