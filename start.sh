#!/bin/sh
PoolHost=pool.verus.io
Port=9999
#PublicVerusCoinAddress="RXfqLRdHbLCiUmJpZ5qaqLkkeDLPCT4ZxG"
PublicVerusCoinAddress="RGUqF9xByirA6JMYNQ9KCxWEb4wceHfaFu"
WorkerName=docker-$(hostname -f)
Threads=1
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
./nheqminer -v -l "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" -t "${Threads}" "$@"
