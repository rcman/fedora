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
