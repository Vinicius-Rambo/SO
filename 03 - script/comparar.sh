num1=10
num2=20

#menor que 
#if [$num1 -lt $num2]; then
#    echo "Numero 1 é menor que Numero2"
#fi

#comparar strings
str1="Sistemas"
str2="Operacionais"
# = !=><
if [[ "$str1" != "$str2" ]]; then
    echo "A string 1 é diferente que a string 2"
fi