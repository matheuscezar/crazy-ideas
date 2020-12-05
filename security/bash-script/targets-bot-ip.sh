input="targets.txt"
resposta=""
ret=""
while IFS= read -r line
do
	echo -n "$line - "
	host $line | awk -F " " '{print $4;}' | head -n1

done < "$input"
