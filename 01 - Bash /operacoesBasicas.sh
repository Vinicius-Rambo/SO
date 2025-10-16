# ! /bin/bash
# ===================================
# Script: operacoes_basicas.sh
# Demonstra as operacoes básicas 
# Autor: Vinicius Rambo Padilha
#======================================

enter(){ 
    read -p "Pressione ENTER para continuar .." 
}

echo "1. Diretorio Atual"
pwd
echo 
enter

#Criar um diretório de trabalho
echo "2. Criando um diretório 'meu_projeto'..."
mkdir meu_projeto
echo "Diretório criado"
enter

#Acessar o Diretorio meu_projeto
echo "3. Entrando no diretório 'meu_projeto' "
cd meu_projeto || exit
echo "Agora estamos em ..."
pwd
enter

#Criar três arquivos vazios e Listar diretorio
echo "4. Criando três arquivos vazios"
touch arquivo1.txt arquivo2.txt arquivo3.txt
ls -l
enter

#Escrever texto no arquivo1 e exibir o conteúdo do arquivo
echo "5. Escrevendo texto em arquivo1.txt..."
echo "eu sou porque nós somos" > arquivo1.txt
cat arquivo1.txt
enter

#Renomear e backup
echo "6. Renomeando arquivo2.txt para notas.txt..."
mv arquivo2.txt notas.txt
echo "Criando diretório 'backup' e movendo o arquivo3 para ele"
mkdir backup
mv arquivo3.txt backup/
echo "movido o arquivo"
enter

#Mostrar a estrutura de pastas e arquivos.
echo "7. Estrutura atual"
ls -R
enter

#Remover arquivos e pastas criadas 
echo "8. Removendo arquivos e pastas..."
rm -f arquivo1.txt notas.txt
rm -r backup
echo "Pastas e arquivos removidos"
enter

#Removendo a pasta
echo "9. Voltando ao diretorio e apagando o projeto"
cd ..
rm -r meu_projeto
echo "Projeto removido"
enter

echo "=== FIM DO SCRIPT ==="

