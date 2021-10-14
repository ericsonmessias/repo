#!/bin/sh
sudo dnf install nginx -y
systemctl enable nginx
systemctl start nginx
echo "hello world from $(hostname)" > /usr/share/nginx/html/index.html