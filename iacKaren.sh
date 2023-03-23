#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo " ** Diretórios criado com Êxito! **"

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo " ** Grupo de usuários criado com Sucesso! **"

echo "Criando usuários..."

useradd kelly -c "Acesso ADM" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd miguel -c "Acesso ADM" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd isabel-c "Acesso ADM" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd felipe  -c "Acesso VEN" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd rebeca -c "Acesso VEN" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd gustavo -c "Acesso VEN" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd adriano -c "Acesso SEC" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd bob -c "Acesso SEC" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd perola -c "Acesso SEC" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim da Execução...."

