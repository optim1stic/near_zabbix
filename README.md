# Install Zabbix 5.0 (Ubuntu 18)
wget https://repo.zabbix.com/zabbix/5.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_5.0-1+bionic_all.deb
dpkg -i zabbix-release_5.0-1+bionic_all.deb
sudo apt update
sudo apt install zabbix-server-mysql zabbix-frontend-php zabbix-nginx-conf zabbix-agent
