#!/bin/bash
step=1 #间隔的秒数，不能大于60
for (( i = 0; i < 60; i=(i+step) )); do
{
    #每秒发送一个是否应该去交易的随机数
    curl http://127.0.0.1:9527/publish/polling_market
} & 
    sleep $step

done
exit