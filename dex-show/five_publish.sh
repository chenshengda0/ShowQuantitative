#!/bin/bash
step=3
for (( i = 0; i < 60; i=(i+step) )); do
{
    curl http://dex-haproxy:9527/publish/polling_price
    curl http://dex-haproxy:9527/publish/polling_expired
} &
    sleep $step

done
exit