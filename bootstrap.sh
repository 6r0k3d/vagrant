#!/bin/bash

#User accounts
useradd 6r0k3d -m -U -s /bin/bash
usermod -aG sudo 6r0k3d
echo "6r0k3d:password" | chpasswd

apt-get update -y
export DEBIAN_FRONTEND=noninteractive
apt-get upgrade -y
apt-get install -y ubuntu-desktop
apt-get install -y gcc
apt-get install -y gdb
reboot
