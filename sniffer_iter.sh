#!/bin/bash

############################################################
# COMENTARIOS SOBRE O PROGRAMA AQUI:
# COMENTARIOS SOBRE O PROGRAMA AQUI:
# COMENTARIOS SOBRE O PROGRAMA AQUI:
# COMENTARIOS SOBRE O PROGRAMA AQUI:
# Setup baseado em distros Debian-Like e RedHat
# Fabio Fraga Machado em DATA
# fraga.fabio@gmail.com
# https://github.com/boinkbr
############################################################

curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer fc8814796e9a91dadc4cf954c4d946bf61c9dc304885a858c17aab66bd03b9b8" "https://api.digitalocean.com/v2/droplets?page=1&per_page=200" > ip_do.txt

cat ip_do.txt| jq -r . | grep "ip_address" | egrep -v "10.1|2604" | awk -F ":" '{print $2}'


