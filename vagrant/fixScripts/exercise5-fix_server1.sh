#!/bin/bash
#add fix to exercise5-server1 here
#i cant figure how to do the passwordles login from a script
echo 'Host server2
   StrictHostKeyChecking no' >> /etc/ssh/ssh_config
echo 'Host 192.168.100.11
   StrictHostKeyChecking no' >> /etc/ssh/ssh_config
ssh-keygen -f /home/vagrant/.ssh/id_rsa -N '' -q
#ssh-copy-id -i /home/vagrant/.ssh/id_rsa vagrant@server2
#cat /home/vagrant/.ssh/id_rsa.pub | sudo ssh -i /vagrant/.vagrant/machines/server2/virtualbox/private_key vagrant@192.168.100.10 "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"

