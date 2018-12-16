#!/bin/bash

sed -i -r 's|'#/'{1}| /|g' twpol.txt
egrep "^[[:space:]]{1,}" twpol.txt|awk -F' ' '{print $1}'|grep '^[/]'|while read addr
do 
	if [ ! -e $addr ];then 
	sed -i -r "s|$addr[[:space:]]|#&|" twpol.txt
	else
	continue
	fi
done

