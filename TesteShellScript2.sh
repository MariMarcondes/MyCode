#!/bin/bash

echo "Vamos calcular! Escolha um numero"
read n1
echo "Agora, defina uma operacao: +  -  *  /"
read op
echo "Por ultimo, mais um numero"
read n2

case $op in
	"+") total=$((n1+n2));;
	"-") total=$((n1-n2));;
	"*") total=$((n1*n2));;
	"/") total=$((n1/n2));;
	*) echo "Voce nao fez isso direito";;
esac

str="O resultado eh "
result="$str$total"

echo $result
