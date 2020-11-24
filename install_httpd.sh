#! /bin/bash
yum install httpd -y 
service httpd start
chkconfig httpd on
sudo sed 's/Test Page/WASE final project/g' /usr/share/httpd/noindex/index.html
