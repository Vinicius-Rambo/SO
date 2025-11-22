read -p "Digite o primeiro número: " num1
read -p "Digite o primeiro número: " num2

if((num1 < num2)); then
    echo "$num1 é menor que $num2"
elif((num1 > num2)); then
    echo "$num1 é maior que $num2"
else 
    echo "Os números são iguais"
    fi