read -p "Digite o preço do produto: " preco

if (( $(echo "$preco > 100" | bc -l) )); then
  desconto=$(echo "$preco * 0.10" | bc)
else
  desconto=$(echo "$preco * 0.05" | bc)
fi 

preco_final=$(echo "$preco - $desconto" | bc)

echo "Desconto aplicado: R$ $desconto"
echo "Preço final: R$ $preco_final"

