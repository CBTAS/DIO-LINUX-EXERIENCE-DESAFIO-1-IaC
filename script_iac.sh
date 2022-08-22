#! /bin/bash

echo " Criando diretorios... "

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo " Criando os grupos de usuarios...."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo " Criando os usuarios...."

useradd carlos -c "Carlos Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
useradd maria -c "Maria Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
useradd joao -c "Joao Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
useradd debora -c "Debora Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
useradd roberto -c "Roberto Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
useradd josefina -c "Josefina Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC
useradd amanda -c "Amanda Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC
useradd rogerio -c "Rogerio Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC

echo " Concedendo permissoes e restricoes...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo " Finalizado o script. "
