#!/bin/bash
step=1 #间隔的秒数，不能大于60
for (( i = 0; i < 60; i=(i+step) )); do
{
    #转BNB
    curl http://127.0.0.1:9527/consumer/transfer_bnb
    
    #转Token
    #curl http://127.0.0.1:9527/consumer/transfer_token

    #设置价格
    #curl http://127.0.0.1:9527/consumer/set_pair_price
    
    #关闭交易市场
    #curl http://127.0.0.1:9527/consumer/set_pair_expired

    #交易
    #curl http://127.0.0.1:9527/consumer/polling_market

} &
    sleep $step

done
exit