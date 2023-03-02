#!/bin/bash

echo "Atualizar o sistema"
echo "Deixar as instalações em y para sempre poder fazer as alterações"

apt-get update
apt-get upgrade -y

echo "instalando o apache2 e unzip"

apt-get install apache2 -y
apt-get install unzip -y

echo "Manipulando o arquivo baixado, wget irá baixar main.zip"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "unzip na pasta main"
unzip main.zip

echo "sera criado um diretorio linux-site-dio - acessando"
cd linux-site-dio-main

echo "Copiar os arquivos dessa pasta para pasta padrao apache"
cp -R * /var/www/html/

echo "permitir que o root tenha acesso a tudo atraves do chmod"
