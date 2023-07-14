#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt remove iptables-persistent -y && sudo ufw disable && sudo iptables -F
sudo fallocate -l 4G /swapfile && sudo chmod 600 /swapfile && sudo mkswap /swapfile && sudo swapon /swapfile && echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker $(whoami)
sudo systemctl start docker
sudo systemctl enable docker
mkdir nginxproxymanager
cd nginxproxymanager






