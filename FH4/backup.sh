#!/bin/bash
(cd ./NFS && vagrant ssh client -c "
    sudo yum -y install tar;
    sudo tar -zcvf /mnt/nfs/var/nfsshare/$(date "+%d-%m-%Y-%T").tar.gz /root /home;
    echo 'sudo tar -zcvf /mnt/nfs/var/nfsshare/\$(date "+%d-%m-%Y-%T").tar.gz /root /home/' | sudo tee /vagrant/backup.sh;
    echo '0 0 * * * vagrant /vagrant/backup.sh >/dev/null 2>&1' | sudo tee /vagrant/backup.sh;
    crontab -r;
    crontab -l | { cat; echo '0 0 * * * vagrant /vagrant/backup.sh >/dev/null 2>&1'; } | crontab -;
")