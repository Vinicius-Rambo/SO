# ! /bin/bash
# ===================================
# Script: operacoes_basicas.sh
# Demonstra as operacoes básicas 
# Autor: Vinicius Rambo Padilha
#======================================

enter(){ 
    read -p "Pressione ENTER para continuar .." 
}

echo "Diretorio Atual"
pwd
echo 

#Criar um diretório de trabalho
echo "Criando um diretório 'meu_projeto'..."
mkdir meu_projeto
echo "Diretório criado"



#Acessar o Diretorio meu_projeto
cd meu_projeto || exit
echo "Agora estamos em ..."
pwd
enter

#Criar três arquivos vazios
touch arquivo1.txt, arquivo2.txt, arquivo3.txt

#Listar diretorio
ls -l
enter

#Escrever texto em um arquivo

echo "Texto de exemplo" > arquivo1.txt
enter

#Exibir o conteúdo do arquivo

cat arquivo1.txt


#Renomear arquivo2 para notas
mv arquivo2.txt notas.txt
enter

#Cria o backup e move o arquivo 2
mkdir backup

mv arquivo3.txt /backup
enter

#Mostrar a estrutura
ls -R meu_projeto
enter

#Apaga tudo 

rm -r 
enter
#Voltar ao diretório anterior e apagar 

cd .. rm -r meu_projeto
enter

echo "=== FIM DO SCRIPT ==="

