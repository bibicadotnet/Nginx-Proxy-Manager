#!/bin/bash
sudo apt update && sudo apt upgrade -y
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker $(whoami)
sudo systemctl start docker
sudo systemctl enable docker
apt install docker-compose -y
mkdir /root/nginxproxymanager
cd /root/nginxproxymanager
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Nginx-Proxy-Manager/main/docker-compose.yml -O /root/nginxproxymanager/docker-compose.yml
docker-compose up -d
