frutas=("maça" "banana" "cereja ")
echo ${frutas[@]}

for fruta in "${frutas[@]}"; do
    echo  "$fruta"
done  

# Array associativos 
echo "========================="
declare -A coresFrutas 
coresFrutas[maca]="vermelha"
coresFrutas[banana]="amarela"
coresFrutas[uva]="roxo"
echo ${!coresFrutas[@]}

echo "======================="
for cores in "${!coresFrutas[@]}"; do
    echo "$cores ${coresFrutas[$cores]}"
done

echo "======================="
unset coresFrutas[banana]
for cores in "${!coresFrutas[@]}"; do
    echo "$cores ${coresFrutas[$cores]}"
done