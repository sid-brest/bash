#!/bin/bash
sudo yum-config-manager --enable rhel-7-server-optional-rpms
sudo rpm -Uvh https://repo.zabbix.com/zabbix/4.4/rhel/7/x86_64/zabbix-release-4.4-1.el7.noarch.rpm
sudo yum -y update && yum -y upgrade 
sudo setenforce 0
sudo yum -y install httpd
sudo systemctl start httpd.service
sudo yum -y install zabbix-server-mysql zabbix-web-mysql zabbix-agent
zcat /usr/share/doc/zabbix-server-mysql*/create.sql.gz | mysql -u zabbix -p zabbix
sudo systemctl restart zabbix-server zabbix-agent
sudo systemctl enable zabbix-server zabbix-agent
