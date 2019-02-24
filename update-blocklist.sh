#!/bin/sh

rm /home/ubuntu/hosts
rm /home/ubuntu/hostsdefault

wget '--no-check-certificate' https://raw.githubusercontent.com/tanchunsiong/customhostfiles/master/hosts -O /home/ubuntu/hosts
wget '--no-check-certificate' https://raw.githubusercontent.com/tanchunsiong/customhostfiles/master/hostsdefault -O /home/ubuntu/hostsdefault


sudo rm /etc/hosts
cat hostsdefault >> hosts

sudo cp /home/ubuntu/hosts /etc/hosts

sudo killall dnsmasq
sudo dnsmasq



