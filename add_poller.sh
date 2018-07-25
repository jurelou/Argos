#!/bin/bash

if [ "$#" -ne 3 ]
then
  echo "Usage: $0 [IP] [server name] [port]"
  exit 1
fi
ssh-copy-id root@$1 -p $3
ssh -p $3 root@$1 "apt-get install python-simplejson --yes"
echo "$2 ansible_host=$1 ansible_user=root ansible_port=2242" >> /opt/hosts.ini
cd /opt/HoneyPy/config
ansible -m ping slaves_after

#ansible-playbook install.yml
