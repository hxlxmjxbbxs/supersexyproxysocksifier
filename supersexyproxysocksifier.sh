#!/bin/bash

SOCKS=$(cat /etc/proxychains4.conf | grep ^socks | awk '{print $1}')
PORT=$(cat /etc/proxychains4.conf | grep ^socks | awk '{print $3}')
export http_proxy=$SOCKS://127.0.0.1:$PORT
export https_proxy=$SOCKS://127.0.0.1:$PORT
export ALL_PROXY=$SOCKS://127.0.0.1:$PORT
export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libproxychains.so.4
export PROXYCHAINS_QUIET_MODE=1

if [ "$1" = "unset" ]
then
        unset http_proxy
        unset https_proxy
        unset ALL_PROXY
        unset LD_PRELOAD
        unset PROXYCHAINS_QUIET_MODE
fi
