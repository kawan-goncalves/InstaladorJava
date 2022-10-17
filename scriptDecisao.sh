#!/bin/bash
java -version
if [ $? -eq 0 ]
then
echo \"java instalado\"
else
echo \"java não instalado\"
echo \"gostaria de instalar o java? s/n \"
read inst
if [ \"$inst\" == \"s\" ]
then
echo \"voce escolheu instalar o java\"
echo \"instalando repositorio\"
sleep 2
sudo apt update -y
sudo apt install default-jdk
clear
echo \"Atualizando repositorio\"
sleep 2
sudo apt update -y
clear
else echo \"você escolheu não instalar\"
fi
fi
 