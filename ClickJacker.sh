#!/bin/bash

read -d '\r\n' -r -a urls < $1

for url in "${urls[@]}"
do
	url="${url%
}"
	response=$(curl -s -I $url)
	code=$(echo "$response" | grep "HTTP/" | cut -d " " -f 2)
	xframe=$(echo "$response" | grep "x-frame-options")

	echo -n "$url	"

	if [[ $code = 200 ]]
	then
		if [[ -z "$xframe" ]]
		then
			echo "Vulnerable!"
		else
			echo "NotVulnerable:("
		fi
	else
		echo "Not200"
	fi
	
done