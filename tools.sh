#!/bin/bash
# Script de instalação das minhas ferramentas de Pentest
 
updatedb
 
clear

echo "Atualizando Linux parte 1..."
echo" "
apt-get update -y
echo" "
echo "Feito!"
 
sleep 3.5
 
clear

echo "Atualizando Linux parte 2..."
echo" "
apt-get upgrade -y
apt-get dist-upgrade -y
echo" "
echo "Feito!"

sleep 3.5
 
clear

echo" "
echo "Instalando ferramenta para pentest em VLAN"
echo" "
apt install yersinia

sleep 3.5
clear


echo "Instalando scanner Nuclei"
echo" "
apt install nuclei
echo" "
echo "Feito!"

sleep 3.5
clear
 
echo "Instalando Golang"
echo" "
apt install golang-go -y
echo" "
echo "Feito!"

sleep 3.5
 
clear

echo "Instalando Subfinder [Recon de Subdominios]"
echo" "
sleep 3.5
 
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest -y
 
wget https://github.com/projectdiscovery/subfinder/releases/download/v2.4.9/subfinder_2.4.9_linux_amd64.zip
 
unzip subfinder_2.4.9_linux_amd64.zip
chmod +x subfinder
mv subfinder /bin/

echo" "
echo "Feito!"
 
clear
 
echo "Concluido!"
 
chmod 777 *
 
