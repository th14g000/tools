#!/bin/bash
 
updatedb
 
clear

echo "Atualizando Linux parte 1..."
apt-get update -y
echo "Feito!"
 
sleep 3.5
 
clear
 
echo "Atualizando Linux parte 2..."
apt-get upgrade -y
apt-get dist-upgrade -y
echo "Feito!"

sleep 3.5
 
clear

echo "Instalando ferramenta para pentest em VLAN"
apt install yersinia

sleep 3.5
clear


echo "Instalando scanner Nuclei"
apt install nuclei
echo "Feito!"

sleep 3.5
clear
 
echo "Instalando Golang"
apt install golang-go -y
echo "Feito!"

sleep 3.5
 
clear
 
echo "Instalando Subfinder [Recon de Subdominios]"

sleep 3.5
 
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest -y
 
wget https://github.com/projectdiscovery/subfinder/releases/download/v2.4.9/subfinder_2.4.9_linux_amd64.zip
 
unzip subfinder_2.4.9_linux_amd64.zip
chmod +x subfinder
mv subfinder /bin/
 
echo "Feito!"
 
clear
 
echo "Concluido!"
 
chmod 777 *
 
