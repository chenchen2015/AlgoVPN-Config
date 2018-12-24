#!/bin/bash
# arguments: port password
#sudo apt update
#sudo apt upgrade -yq
# install docker
#sudo snap install docker
sudo docker run -dt --name vpn -p $1:$1 mritd/shadowsocks -s "-s 0.0.0.0 -p $1 -m aes-256-cfb -k $2 --fast-open"
