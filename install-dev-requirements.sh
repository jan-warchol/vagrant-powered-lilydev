#!/bin/bash

echo "Installing VirtualBox..."
sudo apt-get install --yes virtualbox virtualbox-dkms

echo "Installing Vagrant..."
# version in apt repos is ancient, so we scrape Vagrant's website for latest .deb
VAGRANT_PKG_URL=$(wget --quiet https://www.vagrantup.com/downloads.html -O- | \
                  grep -P "\d+\.\d+\.\d+_x86_64\.deb" | cut -d'"' -f2)
wget $VAGRANT_PKG_URL -O vagrant.deb
sudo dpkg --install vagrant.deb
rm vagrant.deb

echo "Installing Ansible..."
sudo apt-get install --yes software-properties-common
sudo apt-add-repository --yes ppa:ansible/ansible
sudo apt-get update
sudo apt-get install --yes ansible

