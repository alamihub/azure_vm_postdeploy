#!/bin/bash
b=4
for (( i=1; i<=$1; i++ ))
do
    j=$(( $i + $b ))
    echo "
DEVICE=eth0:$i
ONBOOT=yes
BOOTPROTO=dhcp
IPADDR=10.0.0.$j
NETMASK=255.255.255.0
GATEWAY=10.0.0.1
TYPE=Ethernet
USERCTL=no
IPV6INIT=no
    " > /etc/sysconfig/network-scripts/ifcfg-eth0:$i
done
sudo /etc/init.d/network restart

# RUN USING:
# sh nicConfig.sh <IpCount>
