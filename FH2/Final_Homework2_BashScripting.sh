#!/bin/bash
(cd ./ZabbixVM && vagrant up)
(cd ./ZabbixVM && vagrant vbguest zserver)
(cd ./ZabbixVM && vagrant ssh zserver)