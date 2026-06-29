#!/bin/bash

big="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
small="abcdefghijklmnopqrstuvwxyz"
signs="!@#$%^&*"

all="$big$small$signs"

password=${big:$RANDOM%26:1}
password+=${small:$RANDOM%26:1}

for i in {1..7}; do
    password+=${all:RANDOM%60:1}
done

password+=${signs:$RANDOM%8:1}

echo "$password"