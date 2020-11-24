#! /bin/bash
yum install httpd -y 
service httpd start
chkconfig httpd on
sudo sed -i 's/Test Page/WASE Dissertation final project - 2016HW71534/g' /usr/share/httpd/noindex/index.html
echo "<h1> Deployed by terraform</h1>" > /var/wwww/html/index.html
