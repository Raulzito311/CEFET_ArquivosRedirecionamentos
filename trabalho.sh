#!/bin/bash

# Questão 1
sudo apt-get install -y fortune

# Questão 2
fortune | tee mensagem1.txt
fortune | tee mensagem2.txt
fortune | tee mensagem3.txt

# Questão 3
cat mensagem1.txt mensagem2.txt mensagem3.txt | tee mensagens.txt

# Questão 4
cp mensagens.txt mensagens_antiga.txt
fortune >> mensagens.txt

# Questão 5
wc -l mensagens.txt | cut -d " " -f 1 > linhas.txt

# Questão 6
egrep -e "a" -o mensagens.txt | wc -l > letras.txt

# Questão 7
ls -R /etc > saida.txt 2> erros.txt

# Questão 8
ls -R /etc &> saida_com_erros.txt

# Questão 9
cut -d ":" -f 1 /etc/passwd > usuarios.txt

# Questão 10
cut -d ":" -f 1 /etc/passwd | sort > usuarios_ordenados.txt
