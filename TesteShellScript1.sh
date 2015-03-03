#!/bin/bash

echo "Digite um numero: "
read num1
echo "Digite outro numero: "
read num2
total=$((num1 + num2))
st="A soma dos dois numeros eh "
print="$st$total"
echo $print
