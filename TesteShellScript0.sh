#!/bin/bash

date=$(date +%H)
hellom="Bom dia, "
helloa="Boa tarde, "
hellon="Boa noite, "
err="Bom trabalho, "
user=$USER
hm="$hellom$user"
ha="$helloa$user"
hn="$hellon$user"
er="$err$user"

if [ $date -le 4 ]
then
	echo $hn
elif [ $date -ge 5 ] && [ $date -lt 12 ]
then
	echo $hm
elif [ $date -ge 12 ] && [ $date -lt 18 ]
then
	echo $ha
elif [ $date -ge 18 ] && [ $date -lt 24 ]
then
	echo $hn
else
	echo $er
fi
