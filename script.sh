#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo service httpd start 
sudo chkconfig httpd on
sudo echo "my webserver by s3 bucket" > /var/www/html/index.html

