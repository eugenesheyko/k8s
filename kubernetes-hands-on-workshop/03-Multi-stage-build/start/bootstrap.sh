#!/bin/bash
yum install amazon-linux-extras httpd -y 
amazon-linux-extras install php7.2 -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
systemctl status httpd
cd /var/www/html
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
cp -r wordpress/* /var/www/html/
rm -rf wordpress
rm -rf latest.tar.gz
chmod -R 755 /var/www/html/*
chown -R apache:apache /var/www/html/*

##!/bin/bash
#yum update -y
#yum install httpd -y
#service httpd start
#chkconfig httpd on
#cd /var/www/html
#echo "<html><h1>Hello Cloud Gurus! This is the X Web Server</h1></html>" > index.html
