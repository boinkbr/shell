#!/bin/bash
/sbin/iptables -F -t nat
/sbin/iptables -A FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT
/sbin/iptables --append FORWARD --in-interface eth1 -j ACCEPT
/sbin/iptables --append FORWARD --out-interface eth1 -j ACCEPT
/sbin/iptables -t nat -A POSTROUTING -s 192.168.10.0/24 -o eth1 -j MASQUERADE
