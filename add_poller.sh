#!/bin/bash

if [ "$#" -ne 2 ]
then
  echo "Usage: $0 [IP] [server name]"
  exit 1
fi
ssh-copy-id root@$1 -p 22
ssh -p 22 root@$1 "apt-get install python-simplejson"
echo "$2 ansible_host=$1 ansible_user=root" >> /opt/hosts
cd /opt/HoneyPy/config
ansible -m ping slaves
ansible-playbook -K install.yml -i slaves 
