#!/usr/bin/env bash

ip -4 r r default via 10.10.10.129
chattr -i /etc/resolv.conf
echo "nameserver 10.10.10.129" > /etc/resolv.conf
chattr +i /etc/resolv.conf
date -R >> /root/provision-complete.txt
