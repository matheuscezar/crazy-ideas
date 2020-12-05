input="targets.txt"
domains=( " " )
temp=" "
contador=0
existonarray=0
while IFS= read -r line
do
	contador=0
	existonarray=0
	temp=host $line | awk -F " " '{print $4;}' | head -n1
	while [ $contador != ${#domains[@]} ]
	do
		if [ ${domains[$contador]} == temp  ]
		then
			existonarray=1
			break
		else
			contador=contador+1
		fi

	done
	if [ existonarray == 0 ]
	then
		${domains[$contador]}=temp
		echo temp
	fi
done < "$input"
