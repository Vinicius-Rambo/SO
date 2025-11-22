notaCorreta=false

while [ "$notaCorreta" = false ]; do
    read -p "Digite a sua nota: " nota
    if ((nota <= 10)); then 
        if ((nota >= 6)); then
            echo "Aluno Aprovado"
        else 
            diferenca=$(echo "6 - $nota" | bc)
            echo "Aluno Reprovado! Faltam $diferenca pontos para a Aprovação"
        fi
        notaCorreta=true
    fi    
done