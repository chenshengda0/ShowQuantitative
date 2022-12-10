#!/bin/bash
#执行screen
screen -S haproxyServer -X quit
screen -dmS haproxyServer
screen -x -S haproxyServer -p 0 -X stuff $'sudo haproxy -f /opt/haproxy.cnf'
screen -x -S haproxyServer -p 0 -X stuff $'\n'
echo "启动haproxy"