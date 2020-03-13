#!/bin/bash
#add fix toexercise5-server2 here
#i cant figure how to do the passwordles login from a script
echo 'Host server1
   StrictHostKeyChecking no' >> /etc/ssh/ssh_config
echo 'Host 192.168.100.10
   StrictHostKeyChecking no' >> /etc/ssh/ssh_config
ssh-keygen -t rsa -b 4096 -f /home/vagrant/.ssh/id_rsa -N '' -q
#ssh-copy-id -i /home/vagrant/.ssh/id_rsa vagrant@server1
#cat /home/vagrant/.ssh/id_rsa.pub | sudo ssh -i /vagrant/.vagrant/machines/server1/virtualbox/private_key vagrant@192.168.100.10 "mkdir ~/.ssh; cat >> ~/.ssh/authorized_keys;cat /home/vagrant/.ssh/id_rsa.pub | sudo ssh -i /vagrant/.vagrant/machines/server1/virtualbox/private_key vagrant@192.168.100.11 \"mkdir ~/.ssh; cat >> ~/.ssh/authorized_keys""
cat /home/vagrant/.ssh/id_rsa.pub | sudo ssh -i /vagrant/.vagrant/machines/server1/virtualbox/private_key vagrant@192.168.100.10 "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 640 ~/.ssh/authorized_keys"
