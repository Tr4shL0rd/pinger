#!/bin/bash

RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
cat /root/ip.txt | while read output
do
	ping -b -c 1 "$output" > /dev/null
	if [ $? -eq 0 ]; then
		printf "${GREEN}[*]${NC} node $output is ${GREEN}up${NC}" > ipup.log
		printf "${GREEN}[*]${NC} node $output is ${GREEN}up${NC}\n"
		#curl $output
	else
		printf "${RED}[-]${NC} node $output is ${RED}down${NC}\n"
	fi
done 
