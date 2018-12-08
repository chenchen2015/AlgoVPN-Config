# Setup docker and launch AlgoVPN image with the config file included in this repo
sudo snap install docker
sudo docker run --cap-drop ALL -it -v $PWD:/data trailofbits/algo:latest
