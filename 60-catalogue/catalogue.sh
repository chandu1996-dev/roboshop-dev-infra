#!/bin/bash

component=$1
environment=$2

# growing the /home volume for terraform purpose
growpart /dev/nvme0n1 4
lvextend -L +30G /dev/mapper/RootVG-homeVol
xfs_growfs /home

dnf install ansible -y
# ansible-pull -U https://github.com/chandu1996-dev/ansible-roboshop-roles-tf.git -e component=$component main.yaml

REPO_URL=https://github.com/chandu1996-dev/ansible-roboshop-roles-tf.git
REPO_DIR=/opt/roboshop/ansible
ANSIBLE_DIR=ansible-roboshop-roles-tf

mkdir -p $REPO_DIR
mkdir -p /var/log/roboshop/
touch ansible.log

cd $REPO_DIR

# check if ansible repo is already cloned or not

if [ -d $ANSIBLE_DIR ]; then

  cd $ANSIBLE_DIR
    git pull
else
    git clone $REPO_URL
    cd $ANSIBLE_DIR
fi
echo "environment is: $2"

ansible-playbook -e component=$component -e env=$environment main.yaml