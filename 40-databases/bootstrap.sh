component=$1

dnf install ansible -y
ansible-pull -U https://github.com/chandu1996-dev/ansible-roboshop-roles-tf.git -e component=$component main.yaml

