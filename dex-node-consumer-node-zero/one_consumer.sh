#!/bin/bash
step=1 #间隔的秒数，不能大于60
for (( i = 0; i < 60; i=(i+step) )); do
{
    #转Token
    curl http://127.0.0.1:9527/consumer/transfer_token

} &
    sleep $step

done
exit