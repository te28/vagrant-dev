#!/bin/sh

yum -y update
yum -y install yum-utils
yum -y install wget vim tree git

# remi epel repository add
yum -y install epel-release
yum -y install http://rpms.famillecollet.com/enterprise/remi-release-`rpm -q --whatprovides /etc/redhat-release --qf '%{version}\n'`.rpm

yum-config-manager --disable remi
yum-config-manager --disable epel

## Firewall、SELinux OFF
/etc/rc.d/init.d/iptables stop
chkconfig iptables off
chkconfig ip6tables off
cp -p /etc/selinux/config /etc/selinux/config.orig
sed -i -e "s|^SELINUX=.*|SELINUX=disabled|" /etc/selinux/config

# apache install
yum -y install httpd
yum -y install mod_ssl

# MySQL install
yum -y install http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm
yum -y install mysql-community-server

chkconfig mysqld on
service mysqld start

# PHP install
yum -y install --enablerepo=remi,remi-php56 php php-mbstring php-devel php-pdo php-mysql

# apache start
service httpd start
