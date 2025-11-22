read -p "Digite seu 1º número: " num1
read -p "Digite seu 2º número: " num2
read -p "Digite seu 3º número: " num3

media=$(echo "($num1 + $num2 + $num3) / 3" | bc)
echo "A média é: $media"
