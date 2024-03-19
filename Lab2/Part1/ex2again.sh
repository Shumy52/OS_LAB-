#!/bin/bash

counter=0
for p in "$@"
do
    ((counter++))
    if [ $((counter % $1)) -eq 0 ]; then
        echo -n "$p "
    fi
done
echo