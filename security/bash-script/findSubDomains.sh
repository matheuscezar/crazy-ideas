#!/bin/bash
for url in $(cat wordlist2.txt);
do
host $url.$1 | grep "has address"	
done
