read -p "Digite o primeiro número: " num1
read -p "Digite o Segundo número: " num2

soma=$(echo "$num1 + $num2" | bc)
subtracao=$(echo "$num1 - $num2" | bc)
multiplicacao=$(echo "$num1 * $num2" | bc)
divisao=$(echo "$num1 / $num2" | bc)

echo "Soma: $soma"
echo "Subtração: $subtracao"
echo "multiplicação: $multiplicacao"
echo "divisao: $divisao"