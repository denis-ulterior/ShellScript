#!/bin/bash
echo "Realizando atualização"
apt-get update
apt-get upgrade -y

echo "Instalando recursos"
apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y

echo "Obtendo pacotes"
cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando arquivos para www/html"
cd linux-site-dio-main
cp -R * /var/www/html/