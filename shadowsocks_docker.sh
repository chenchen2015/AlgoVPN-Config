sudo apt update
sudo apt upgrade -yq
# install docker
sudo snap install docker
docker run -dt --name vpn -p 6443:6443 mritd/shadowsocks -s "-s 0.0.0.0 -p 6443 -m aes-256-cfb -k [PWD_HERE] --fast-open"
