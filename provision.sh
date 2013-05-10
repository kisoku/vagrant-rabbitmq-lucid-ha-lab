#!/bin/bash
echo "192.168.122.115 eric" >> /etc/hosts
echo "192.168.122.116 frank" >> /etc/hosts


sudo cp -a /vagrant/.ssh /root/
sudo chown -R root:root /root/.ssh
sudo chmod 700 /root/.ssh
sudo chmod 600 /root/.ssh/id_rsa
sudo chmod 644 /root/.ssh/id_rsa.pub
sudo chmod 600 /root/.ssh/authorized_keys2
