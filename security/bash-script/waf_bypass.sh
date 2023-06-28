cat security-trails.txt | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | sort -u > ips.txt
for ip in $(cat ips.txt); do  echo -n "Testing IP $ip - "; curl "https://$ip/" -s -o /dev/null -w '%{http_code}' -H 'Host: victims.com' -k --connect-timeout 5; echo "";  done
