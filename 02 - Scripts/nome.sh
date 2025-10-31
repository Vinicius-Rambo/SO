# Captura nome e idade 
#read -p "Digite o seu nome: " nome
#read -p "Digite sua idade: " idade 

#echo "Olá $nome, usa idade é $idade"

variavel="Variavel Global"

function minha_funcao(){
    local variavel="Variavel Local"
    echo $variavel
}

minha_funcao 
echo $variavel