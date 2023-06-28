for ip in $(cat ips.txt); do  echo -n "Testing IP $ip - "; curl "https://$ip/" -s -o /dev/null -w '%{http_code}' -H 'Host: victims.com' -k --connect-timeout 5; echo "";  done
