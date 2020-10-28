#!/bin/bash

mkdir -p /home/vagrant/.ssh
chmod 0700 /home/vagrant/.ssh
wget --no-check-certificate https://raw.githubusercontent.com/hashicorp/vagrant/main/keys/vagrant.pub -O /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant
echo 'vagrant ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers