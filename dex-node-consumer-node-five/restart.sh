#!/bin/bash
screen -S DexNodeApi -X quit
screen -dmS DexNodeApi
screen -x -S DexNodeApi -p 0 -X stuff $'/usr/local/bin/node /opt/build/Server/index.js >> /opt/build/dex-node-consumer-node-five.md 2>&1'
screen -x -S DexNodeApi -p 0 -X stuff $'\n'
echo "重启API"