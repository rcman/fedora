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

