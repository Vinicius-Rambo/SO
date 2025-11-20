read -p "Digite um número: " num

if((num % 2 == 0)); then
    echo "O $num é PAR"
else 
    echo "O $num é IMPAR"
fi