#!/bin/bash
(cd ./NFS && vagrant ssh client -c "
    sudo yum -y install tar;
# create tar gz & push it to shared folder on server
    sudo tar -zcvf /mnt/nfs/var/nfsshare/$(date "+%d-%m-%Y-%T").tar.gz /root /home;
# create shell script with tar gz task
    echo 'sudo tar -zcvf /mnt/nfs/var/nfsshare/\$(date "+%d-%m-%Y-%T").tar.gz /root /home/' | sudo tee /vagrant/backup.sh;
# remove all tasks in planner     
    crontab -r;
# create daily backup task at 0:00 in planner
    crontab -l | { cat; echo '0 0 * * * vagrant /vagrant/backup.sh >/dev/null 2>&1'; } | crontab -;
")