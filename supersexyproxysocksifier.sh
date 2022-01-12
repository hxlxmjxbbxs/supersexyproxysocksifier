#!/bin/bash

if [[ "$1" != '' && "$2" != '' ]]
then
	export http_proxy=$1://127.0.0.1:$2
	export https_proxy=$1://127.0.0.1:$2
	export ALL_PROXY=$1://127.0.0.1:$2
	echo '\e[31m\e[1mRemember:\e[0m\e[31m This conf will be only available on this tab!!'
	echo '\e[31m\e[1mSudo commands WILL NOT be supersexyproxysocksified!!'   
	echo '\e[32mYour shell has been \e[31ms\e[32mu\e[33mp\e[34me\e[35mr\e[37ms\e[31me\e[32mx\e[33my\e[34mp\e[35mr\e[36mo\e[37mx\e[31my\e[32ms\e[33mo\e[34mc\e[35mk\e[36ms\e[37mi\e[31mf\e[32mi\e[33me\e[34md\e[35m!!' 
elif [ "$1" = "unset" ]
then
        unset http_proxy
        unset https_proxy
        unset ALL_PROXY
        echo -e "\e[31mYou are \e[1mNOT\e[0m \e[31msupersexyproxysocksified anymore :(" 
else
        echo 'Usage: . ./supersexyproxysocksifier.sh <http|https|socks4|socks5> <PORT>' 
fi
