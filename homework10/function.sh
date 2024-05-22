#!/bin/bash

create_users() {
useradd tim
useradd brad
useradd ann
mkdir kaizen elaman
touch hello world
}

create_users

#packages: wget, httpd, tree, git

install_packages() {
read -p "$(cat <<EOF

Available packages to install:
-> wget
-> httpd
-> tree
-> git

Please type package name to install: 
EOF
)" pack

if [ $pack = "wget" ]; then
yum install wget -y
elif [ $pack = "httpd" ]; then
yum install httpd -y
elif [ $pack = "tree" ]; then
yum install tree -y
elif [ $pack = "git" ]; then
yum install git -y
else
echo "Invalid package name, please try again :("
fi
}

install_packages
