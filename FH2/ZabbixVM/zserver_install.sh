#!/bin/bash
# disable SELinux on CentOS
sudo setenforce 0
sudo sed -i 's/^SELINUX=.*/SELINUX=permissive/g' /etc/selinux/config

# install & update packages
sudo yum-config-manager --enable rhel-7-server-optional-rpms
sudo rpm -Uvh https://repo.zabbix.com/zabbix/4.4/rhel/7/x86_64/zabbix-release-4.4-1.el7.noarch.rpm
sudo yum -y update
sudo yum -y install wget nano httpd zabbix-server-mysql mariadb-server 
# start\enable services
sudo systemctl start httpd.service
sudo systemctl start mariadb
sudo systemctl enable mariadb