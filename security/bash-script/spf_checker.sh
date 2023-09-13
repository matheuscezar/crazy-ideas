#!/bin/bash

# Run the nslookup command and store the output in a variable
output=$(nslookup -type=txt $1)

# Check if the output contains the string "No answer"
if [[ "$output" =~ "No answer" ]]; then
  echo "[!] SPF record not found"
else
  echo "[+] SPF record found."
fi
