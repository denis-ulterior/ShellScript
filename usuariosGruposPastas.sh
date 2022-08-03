#!/bin/bash
echo "Criando grupos de usuários..."
groupadd GRP_ADMINISTRATIVO
groupadd GRP_VENDAS
groupadd GRP_SECRETARIADO

echo "Criando usuários e adicionando aos grupos"
useradd carlos -m -s /bin/bash -p "$(openssl passwd Senha123)" -G GRP_ADMINISTRATIVO
useradd maria -m -s /bin/bash -p "$(openssl passwd Senha123)" -G GRP_ADMINISTRATIVO
useradd joao -m -s /bin/bash -p "$(openssl passwd Senha123)" -G GRP_ADMINISTRATIVO

useradd debora -m -s /bin/bash -p "$(openssl passwd Senha123)" -G GRP_VENDAS
useradd sebastiana -m -s /bin/bash -p "$(openssl passwd Senha123)" -G GRP_VENDAS
useradd roberto -m -s /bin/bash -p "$(openssl passwd Senha123)" -G GRP_VENDAS

useradd josefina -m -s /bin/bash -p "$(openssl passwd Senha123)" -G GRP_SECRETARIADO
useradd amanda -m -s /bin/bash -p "$(openssl passwd Senha123)" -G GRP_SECRETARIADO
useradd rogerio -m -s /bin/bash -p "$(openssl passwd Senha123)" -G GRP_SECRETARIADO

echo "Criando pastas..."

mkdir /dados
mkdir /dados/publico
mkdir /dados/administrativo
mkdir /dados/vendas
mkdir /dados/secretariado

echo "Aplicando permissões em pastas"

chown root /dados
chown root /dados/publico

chown root:GRP_ADMINISTRATIVO /dados/administrativo
chown root:GRP_VENDAS /dados/vendas
chown root:GRP_SECRETARIADO /dados/secretariado

chmod 777 /dados
chmod 777 /dados/publico

chmod 770 /dados/administrativo
chmod 770 /dados/vendas
chmod 770 /dados/secretariado

echo "Finalizado!"