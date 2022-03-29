#!/bin/bash

# disable SELinux
sudo setenforce 0
sudo sed -i 's/^SELINUX=.*/SELINUX=permissive/g' /etc/selinux/config

# install & update packages
sudo yum -y update
sudo yum -y install nano
sudo rpm -Uvh https://repo.zabbix.com/zabbix/5.0/rhel/7/x86_64/zabbix-release-5.0-1.el7.noarch.rpm
sudo yum install -y zabbix-agent

# configure zabbix
sudo sed -i 's/127.0.0.1/192.168.56.10/g' /etc/zabbix/zabbix_agentd.conf
sudo systemctl start zabbix-agent
sudo systemctl enable zabbix-agent
sudo systemctl restart zabbix-agent