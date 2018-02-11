#!/bin/bash 

sudo setcap CAP_NET_BIND_SERVICE=+eip $(readlink -f $(type -all python  | awk 'NF{print $NF}'))
sudo setcap CAP_NET_BIND_SERVICE=+eip $(readlink -f $(type -all python2 | awk 'NF{print $NF}'))
sudo setcap CAP_NET_BIND_SERVICE=+eip $(readlink -f $(type -all python3 | awk 'NF{print $NF}'))

echo "EOF"
read -p "Press any to continue..." -n 1;echo ""
