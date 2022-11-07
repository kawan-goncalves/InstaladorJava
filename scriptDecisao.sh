#!/bin/bash
java -version
if [ $? -eq 0 ]
then
echo \"java instalado\"
git clone https://github.com/Grupo-5-2-Semestre/Trackio-JAR-CLI.git
cd Trackio-JAR-CLI
java -jar JARCLI.jar
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
sudo apt install default-jdk -y
clear
echo \"Atualizando repositorio\"
sleep 2
sudo apt update -y
clear
git clone https://github.com/Grupo-5-2-Semestre/Trackio-JAR-CLI.git
cd Trackio-JAR-CLI.git
java -jar JARCLI.jar
else echo \"você escolheu não instalar\"
echo \"gostaria de iniciar? s/n \"
read init
if [ \"$init\" == \"s\" ]
then
git clone https://github.com/Grupo-5-2-Semestre/Trackio-JAR-CLI.git
cd Trackio-JAR-CLI.git
java -jar JARCLI.jar
fi
fi
fi
 