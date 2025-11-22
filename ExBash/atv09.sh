read -p "Digite seu peso em kg: " peso 
read -p "Digite sua altura em metros: " altura

imc=$(echo "scale=2; $peso / ($altura * $altura)" | bc)
echo "Seu IMC é $imc"

if (( $(echo "$imc <18.5" | bc -l) )); then
  echo "Classifição: Abaixo do peso"

elif (( $(echo "$imc <25" | bc -l) )); then
  echo "Classifição: Peso normal"

elif (( $(echo "$imc <30" | bc -l) )); then
  echo "Classificação: Sobrepeso"

else 
  echo "Classificação: Obesidade"
fi
