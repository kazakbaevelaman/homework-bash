#!/bin/bash

create_users() {
useradd tim
useradd brad
useradd ann
mkdir kaizen elaman
touch hello world
}


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


app_run(){

echo -e "Please make a choice: \n > 1 -> Create users \n > 2 -> Install packages"
read -p "Please type 1 or 2: " choice 

if [ $choice = "1" ]; then
	create_users
elif [ $choice = "2" ]; then 
	install_packages 
else 
	echo "Invalid option, pleaes try again :("

fi
}


app_run

