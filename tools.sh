#!/bin/bash
 
updatedb
 
clear
 
echo " "
echo "Atualizando Linux [UPDATE]"
echo " "
apt-get update -y
echo " "
echo " "
 
sleep 3.5
 
clear
 
echo " "
echo "Atualizando Linux [UPGRADE]"
echo " "
apt-get upgrade -y
apt-get dist-upgrade -y
echo " "
echo " "
 
sleep 3.5
 
clear
 
echo " "
echo "Instalando Golang"
echo " "
echo " "
 
sleep 3.5
 
apt install golang-go -y
 
clear
 
echo " "
echo "Instalando Dalfox [Scanner de XSS - SQLI - Open Redirect]"
echo " "
echo " "
 
sleep 3.5
 
go install github.com/hahwul/dalfox/v2@latest -y
 
wget https://github.com/hahwul/dalfox/releases/download/v2.7.1/dalfox_2.7.1_linux_amd64.tar.gz
 
tar -zxvf dalfox_2.7.1_linux_amd64.tar.gz
chmod +x dalfox
mv dalfox /bin/
 
clear
 
echo " "
echo "Instalando Subfinder [Recon de Subdominios]"
echo " "
echo " "
 
sleep 3.5
 
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest -y
 
wget https://github.com/projectdiscovery/subfinder/releases/download/v2.4.9/subfinder_2.4.9_linux_amd64.zip
 
unzip subfinder_2.4.9_linux_amd64.zip
chmod +x subfinder
mv subfinder /bin/
 
clear
 
echo " "
echo "Instalando Gobuster [Fuzzing]"
echo " "
echo " "
 
sleep 3.5
 
apt-get install gobuster -y
 
clear
 
echo " "
echo "Instalando Leafpad [Bloco de Notas]"
echo " "
echo " "
 
sleep 3.5
 
apt-get install leafpad -y
 
clear
 
rm README.md
rm subfinder_2.4.9_linux_amd64.zip
rm LICENSE.txt
rm dalfox_2.7.1_linux_amd64.tar.gz
 
clear
 
echo "Baixando Office2John.py"
 
sleep 3.5
 
wget https://raw.githubusercontent.com/openwall/john/bleeding-jumbo/run/office2john.py
chmod +x office2john.py
mv office2john.py /bin
 
clear
 
echo "Concluido!"
 
chmod 777 *
 
