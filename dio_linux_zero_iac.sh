#!/bin/bash

echo "Directories"

mkdir/ public
mkdir/ administration
mkdir/ sales
mkdir/ cybersecurity

echo "User Groups"

groupadd GRP_ADM
grouapp GRP_SALES
groupadd GRP_CYSEC

echo "Creating Users and Adding to Groups"

echo "Administration Users"
useradd admUser01 -m -s /bin/bash -p $(openss1 passwd -crypt Pass2023) -G GRP_ADM
useradd admUser02 -m -s /bin/bash -p $(openss1 passwd -crypt Pass2023) -G GRP_ADM
useradd admUser03 -m -s /bin/bash -p $(openss1 passwd -crypt Pass2023) -G GRP_ADM

echo "Sales Users"
useradd salesUser01 -m -s /bin/bash -p $(openss1 passwd -crypt Pass2023) -G GRP_SALES
useradd salesUser02 -m -s /bin/bash -p $(openss1 passwd -crypt Pass2023) -G GRP_SALES
useradd salesUser03 -m -s /bin/bash -p $(openss1 passwd -crypt Pass2023) -G GRP_SALES

echo "Cybersecurity Users"
useradd cysecUser01 -m -s /bin/bash -p $(openss1 passwd -crypt Pass2023) -G GRP_CYSEC
useradd cysecUser02 -m -s /bin/bash -p $(openss1 passwd -crypt Pass2023) -G GRP_CYSEC
useradd cysecUser03 -m -s /bin/bash -p $(openss1 passwd -crypt Pass2023) -G GRP_CYSEC

echo "Seting Permissions"

chown root:GRP_ADM /administration
chown root:GRP_SALES /sales
chown root:GRP_CYSEC /cybersecurity

chmod 777/public
chmod 770/administration
chmod 770/sales
chmod 770/cybersecurity

echo "Done and Done"
