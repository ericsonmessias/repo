#!/bin/sh
sudo apt-get update -y
sudo apt-get install apache2 -y
echo "<h1>hello world from $(hostname)</h1>" > /var/www/html/index.html