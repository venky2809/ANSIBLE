#!/bin/bash
exec > >(tee -i /var/log/user-data.log)
exec 2>&1
sudo apt update -y
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
sudo apt install git -y  
cd /home/ubuntu
git clone https://github.com/venky2809/ANSIBLE.git
cd ANSIBLE
ansible-playbook -i /home/ubuntu/ANSIBLE/Jenkins-playbook.yml
