#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt remove iptables-persistent -y && sudo ufw disable && sudo iptables -F
sudo fallocate -l 4G /swapfile && sudo chmod 600 /swapfile && sudo mkswap /swapfile && sudo swapon /swapfile && echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker $(whoami)
sudo systemctl start docker
sudo systemctl enable docker
apt install docker-compose -y
mkdir /root/nginxproxymanager
cd /root/nginxproxymanager
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Nginx-Proxy-Manager/main/docker-compose.yml -O /root/nginxproxymanager/docker-compose.yml
docker-compose up -d
