#!/bin/bash
step=30
for (( i = 0; i < 60; i=(i+step) )); do
{
    curl http://127.0.0.1:9527/publish/polling_price
    curl http://127.0.0.1:9527/publish/polling_expired
}
    sleep $step

done
exit