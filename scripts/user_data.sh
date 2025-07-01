#!/bin/bash
exec > /var/log/user_data.log 2>&1

yum update -y
yum install git -y
rpm -ivh https://corretto.aws/downloads/latest/amazon-corretto-21-x64-linux-jdk.rpm

cd /home/ec2-user
git clone https://github.com/techeazy-consulting/techeazy-devops.git
cd techeazy-devops/backend

nohup java -jar parcel.jar > log.txt 2>&1 &
shutdown -h +60