#!/bin/bash

# disable SELinux
sudo setenforce 0
sudo sed -i 's/^SELINUX=.*/SELINUX=permissive/g' /etc/selinux/config

# install & update packages
sudo yum -y update
sudo yum -y install httpd
sudo systemctl enable httpd
sudo systemctl restart httpd
sudo rpm -Uvh https://repo.zabbix.com/zabbix/5.0/rhel/7/x86_64/zabbix-release-5.0-1.el7.noarch.rpm
sudo yum install -y zabbix-server-mysql zabbix-get
sudo yum-config-manager --enable zabbix-frontend
sudo yum -y install centos-release-scl
sudo yum -y install zabbix-web-mysql-scl zabbix-apache-conf-scl
sudo yum -y install mariadb-server
sudo systemctl enable --now mariadb

# create initial database
mysql -uroot -e "UPDATE mysql.user SET Password = PASSWORD('zabbix') WHERE User = 'root'"
sudo systemctl restart mariadb
mysql -uroot -pzabbix -e "DROP USER ''@'localhost'"
mysql -uroot -pzabbix -e "DROP USER ''@'$(hostname)'"
mysql -uroot -pzabbix -e "DROP DATABASE test"
mysql -uroot -pzabbix -e "FLUSH PRIVILEGES"
mysql -uroot -pzabbix -e "CREATE DATABASE zabbix character set utf8 collate utf8_bin"
mysql -uroot -pzabbix -e "CREATE USER 'zabbix'@'localhost' identified by 'zabbixpass'"
mysql -uroot -pzabbix -e "GRANT all privileges on zabbix.* to 'zabbix'@'localhost'"
mysql -uroot -pzabbix -e "QUIT"