# Nginx-Proxy-Manager
1. Login root
2. Cài đặt Nginx Proxy Manager
```shell
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Nginx-Proxy-Manager/main/setup.sh -O setup_nginx_proxy_manager.sh && sudo chmod +x setup_nginx_proxy_manager.sh && sudo ./setup_nginx_proxy_manager.sh
```
Login WebUI IP_Public:8181

Info admin
```shell
Email:    admin@example.com
Password: changeme
```


Tinh chỉnh docker
```shell
docker-compose up -d --build --remove-orphans --force-recreate
```
