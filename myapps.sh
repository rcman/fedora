#!/bin/bash

cd ~
sudo dnf install fedpkg -y
fedpkg clone -a kernel
cd kernel
sudo dnf builddep kernel.spec
sudo yum install kernel-devel -y
sudo apt install libncurses-devel -y
sudo dnf install make -y 
sudo yum install automake -y
sudo yum install gcc -y
sudo yum install gcc-c++ -y
sudo yum install gawk -y
sudo yum install flex -y 
bison openssl libssl-devel -y 
sudo yum dkms -y 
sudo yum install elfutils-devel -y 
sudo yum install libudev-devel -y 
sudo sum install libpci-devel -y 
sudo yum install libiberty-devel 
sudo yum install autoconf -y
sudo yum install llvm -y
sudo yum install dwarves -y
sudo yum install lz4 -y
sudo yum install lzma -y
sudo yum install lzma-alone -y
sudo yum install openssl -y
sudo yum install uuid -y
sudo yum install cmake -y
sudo yum install vim -y
sudo yum install neofetch -y
sudo yum install htop -y
sudo yum install tree -y
sudo yum install mc -y
sudo yum install gparted -y
sudo yum install vim -y
sudo yum install mesa-utils -y

sudo dnf install firewalld -y
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf
sudo echo "net.ipv6.conf.default.disable_ipv6 = 1"  >> /etc/sysctl.conf
sudo echo "net.ipv6.conf.lo.disable_ipv6 = 1" >> /etc/sysctl.conf
sudo firewall-cmd --get-services
sudo dnf install openssh-server
sudo systemctl enable sshd
sudo systemctl start sshd
sudo firewall-cmd --zone=public --permanent --add-port=22/tcp
sudo dnf install clamav clamd clamav-update
sudo systemctl stop clamav-freshclam
sudo freshclam
sudo systemctl enable clamav-freshclam --now

