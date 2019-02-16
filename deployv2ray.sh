#!/bin/bash

cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

echo "data -R"

date -R

bash <(curl -L -s https://install.direct/go.sh)

cp -rf ./config.json /etc/v2ray/config.json

systemctl start v2ray

echo "v2ray is  done"

wget https://github.com/cx9208/bbrplus/raw/master/centos7/x86_64/kernel-4.14.90.rpm

yum install -y kernel-4.14.90.rpm
grub2-set-default 0

echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbrplus" >> /etc/sysctl.conf


echo "bbrplus install successfully"
echo "please reboot"





