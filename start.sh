#!/bin/bash
PoolHost=pool.verus.io
Port=9999
#PublicVerusCoinAddress="RXfqLRdHbLCiUmJpZ5qaqLkkeDLPCT4ZxG"
PublicVerusCoinAddress="RGUqF9xByirA6JMYNQ9KCxWEb4wceHfaFu"
#WorkerName=docker$(hostname -f)
WorkerName=dockerServer
if [ "$(cat /proc/cpuinfo | grep processor | wc -l)" > 7  ];then
	Threads=$(expr $(cat /proc/cpuinfo | grep processor | wc -l) - 2)
else
	Threads=$(expr $(cat /proc/cpuinfo | grep processor | wc -l) / 2)
fi
echo $Threads
##set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
./nheqminer -v -l "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" -t "${Threads}" "$@"
