# ! /bin/bash
# ===================================
# Script: operacoes_basicas.sh
# Cria uma pasta com os meses e seus dias.
# Autor: Vinicius Rambo Padilha
#======================================
# Pasta base
mkdir -p Ano
cd Ano || exit

# Meses e quantidade de dias
declare -A meses
meses=( ["Janeiro"]=31 ["Fevereiro"]=28 ["Março"]=31 ["Abril"]=30 ["Maio"]=31 ["Junho"]=30 ["Julho"]=31 ["Agosto"]=31 ["Setembro"]=30 ["Outubro"]=31 ["Novembro"]=30 ["Dezembro"]=31 )

# Loop pelos meses
for mes in "${!meses[@]}"; do
    mkdir -p "$mes"
    dias=${meses[$mes]}
    for i in $(seq -w 1 $dias); do
        mkdir -p "$mes/$i"
    done
done

echo "Pastas do ano criadas com sucesso!"