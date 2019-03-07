#!/bin/bash

############################################################
# Script de instalação e configuraçao do firewall 
# ConfigServer, padrao utilizado nas instalaçoes da iTER
# Setup baseado em distros Debian-Like e RedHat
# Fabio Fraga Machado em 22-10-2018
# fraga.fabio@gmail.com
# https://github.com/boinkbr
# Versao 2 - aplicadas melhorias e uniao com outros scripts
# Data do commit: 07-03-2019
############################################################

URL="https://download.configserver.com/csf.tgz"
TAR=$(which tar)
EDITOR=$(which vim)
FETCH=$(which wget)
FILE="/etc/csf/csf.conf"

# Faz o download da ultima versao do pacote
$FETCH $URL

# Descompacta e entra no diretorio para invocar o script de instalação
$TAR -xvzf csf.tgz && cd csf && sh ./install.sh

# Invoca o editor de texto para edição do arquivo principal /etc/csf/csf.conf
# É importante a edição do arquivo /etc/csf/csf.allow
# $EDITOR $FILE 

sed -i 's/TESTING = "1"/TESTING = "0"/g' /etc/csf/csf.conf
sed -i 's/TCP_IN = "20,21,22,25,53,80,110,143,443,465,587,993,995"/TCP_IN = ""/g' /etc/csf/csf.conf
sed -i 's/TCP_OUT = "20,21,22,25,53,80,110,113,443,587,993,995"/TCP_OUT = "0:65535"/g' /etc/csf/csf.conf
sed -i 's/UDP_IN = "20,21,53"/UDP_IN = ""/g' /etc/csf/csf.conf
sed -i 's/UDP_OUT = "20,21,53,113,123"/UDP_OUT = "0:65535"/g' /etc/csf/csf.conf
sed -i 's/TCP6_IN = "20,21,22,25,53,80,110,143,443,465,587,993,995"/TCP6_IN = ""/g' /etc/csf/csf.conf
sed -i 's/TCP6_OUT = "20,21,22,25,53,80,110,113,443,587,993,995"/TCP6_OUT = "0:65535"/g' /etc/csf/csf.conf
sed -i 's/UDP6_IN = "20,21,53"/UDP6_IN = ""/g' /etc/csf/csf.conf
sed -i 's/UDP6_OUT = "20,21,53,113,123"/UDP6_OUT = "0:65535"/g' /etc/csf/csf.conf

# commit the changes and restart the firewall daemon
/usr/sbin/csf -ra
