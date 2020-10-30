#!/bin/bash
sudo sed -i -e "s/PermitRootLogin no/PermitRootLogin yes/" /etc/ssh/sshd_config
sudo service sshd reload
echo "root:$1" | chpasswd

# RUN USING:
# sh SetRootPassword.sh <Password>