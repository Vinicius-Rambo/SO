numeroSecreto=$(( RANDOM % 100 +1))
tentativas=0
acertou=false

while [ "$acertou" = false ]; do
    read -p "Digite o seu palpite: " palpite
    ((tentativas++))

    if ((palpite == numeroSecreto)); then
        echo "Parabéns, você acertou na tentativa $tentativas"
        acertou=true
    elif ((palpite > numeroSecreto)); then
        echo "Muito alto"
    else 
        echo "Muito baixo!"
    fi
done