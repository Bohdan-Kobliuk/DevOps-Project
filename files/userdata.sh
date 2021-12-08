#!/bin/bash
echo "127.0.0.1 `hostname`" >> /etc/hosts
yum update -y
yum install -y docker
service docker start
docker pull bkimminich/juice-shop
docker run -d -p 80:3000 bkimminich/juice-shop
