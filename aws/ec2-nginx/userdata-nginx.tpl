#!/bin/bash
sudo apt update -y &&
sudo apt install -y nginx
echo "Terragrunt & Terraform!" > /var/www/html/index.html
