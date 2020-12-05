#!/bin/bash

if [ "$1" == "" ]
then 
echo "Find Hosts Up in your NetWork"
echo "Example: $0 10.0.0"
else
for host in {1..254}; do
ping -c1 $1.$host | grep "64 bytes" 
done
fi
