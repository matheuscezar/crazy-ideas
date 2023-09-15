cat security-trails.txt | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | sort -u > ips.txt
for ip in $(cat ips.txt); do  echo -n "Testing IP $ip - "; curl "https://$ip/" -s -o /dev/null -w '%{http_code}' -H 'Host: victims.com' -k --connect-timeout 5; echo "";  done



#bypass por ASN
for i in $(seq 1 255); do echo -n "186.233.250.$i: " ; curl "https://186.233.250.$i" -s -o /dev/null -w '%{http_code}' -k -H "Host: www.hostgator.com.br" --connect-timeout 5; echo "" ; done
