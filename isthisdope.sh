#!/bin/bash

num=$RANDOM

for i in $@; do 
    if [[ $num%2 -gt 0 ]]; then
        echo "$i is DOPE"
    else
        echo "$i is NOT DOPE"
    fi
done