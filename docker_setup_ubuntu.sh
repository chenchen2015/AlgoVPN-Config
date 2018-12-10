# Setup docker and launch AlgoVPN image with the config file included in this repo
tmux

# Setup docker for Ubuntu
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update   
sudo apt-get install docker-ce
sudo groupadd docker
sudo usermod -aG docker $USER

logout

# start new
tmux
docker run hello-world

#sudo docker run --cap-drop ALL -it -v $PWD:/data trailofbits/algo:latest
