#!/bin/bash

############################################################
# Script de instalação e configuraçao do firewall 
# ConfigServer, padrao utilizado nas instalaçoes da iTER
# Setup baseado em distros Debian-Like e RedHat
# Fabio Fraga Machado em 22-10-2018
# fraga.fabio@gmail.com
# https://github.com/boinkbr
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

