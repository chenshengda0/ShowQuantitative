#!/usr/bin/bash

sudo -s
#设置时区
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
#echo -e "Y\n" | unminimize
#设置环境变量
for item in $(cat /proc/1/environ | tr '\0' '\n');do echo "export ${item}" >>  /etc/environment;done
sed -i "$ a source /etc/environment" /root/.bashrc

echo 0
#启动服务,启动插件
rabbitmq-server -detached
#rabbitmq-plugins --offline enable rabbitmq_management

echo 1
rabbitmq-plugins --offline enable rabbitmq_web_stomp

echo 2
rabbitmq-plugins --offline enable rabbitmq_web_stomp_examples

echo 3
/opt/restart.sh

echo "init-start end"