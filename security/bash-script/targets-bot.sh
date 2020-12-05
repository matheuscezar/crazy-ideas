input="targets.txt"
resposta=""
ret=""
while IFS= read -r line
do
	resposta=$(dig CNAME $line +short)
	if [[ -n $resposta ]]; 
	then
		echo -n "Find CNAME in $line - "
		ret=$(curl -s -o /dev/null -w "%{http_code}" $resposta)
		echo "[RESPOSTA] Aponta para domínio não registrado no host: $resposta"
		echo "STATUS ENCONTRADO: $ret"
		echo "------------------------------------------------------------------"
	fi

done < "$input"
