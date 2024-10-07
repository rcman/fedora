#!/bin/bash

cd ~
sudo dnf install fedpkg -y
fedpkg clone -a kernel
cd kernel
sudo dnf builddep kernel.spec

sudo dnf install kernel-devel -y
sudo dnf install libncurses-devel -y
sudo dnf install make -y 
sudo dnf install automake -y
sudo dnf install gcc -y
sudo dnf install gcc-c++ -y
sudo dnf install gawk -y
sudo dnf install flex -y 
sudo dnf install bison -y 
sudo dnf install libssl-devel -y 
sudo dnf install bc
sudo dnf dkms -y 
sudo dnf install elfutils-devel -y 
sudo dnf install libudev-devel -y 
sudo sum install libpci-devel -y 
sudo dnf install libiberty-devel 
sudo dnf install autoconf -y
sudo dnf install llvm -y
sudo dnf install dwarves -y
sudo dnf install lz4 -y
sudo dnf install lzma -y
sudo dnf install lzma-alone -y
sudo dnf install openssl -y
sudo dnf install uuid -y
sudo dnf install cmake -y
sudo dnf install vim -y
sudo dnf install neofetch -y
sudo dnf install htop -y
sudo dnf install tree -y
sudo dnf install mc -y
sudo dnf install gparted -y
sudo dnf install vim -y
sudo dnf install mesa-utils -y

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
sudo dnf clean all

