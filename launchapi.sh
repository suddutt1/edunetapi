#!/bin/bash
echo "Removing old running apis"
kill -9 ` ps -ef | grep -e "xclient" | awk '{printf $2 " " }' `
ps -ef | grep -e "xclient"
echo "Removing old logs"
rm *.log

no_proxy=ca.iitj.ac.in,ca.iitkjp.ac.in,ca.edunet.net,orderer0.edunet.net,peer0.iitj.ac.in,peer0.edunet.net,peer0.iitkjp.ac.in,localhost,$no_proxy
export no_proxy
nohup ./xclient -p=7001 -v ./connection-profile-edunet.yaml > edunet_api.log 2>&1 &
nohup ./xclient -p=7002 -v ./connection-profile-iitj.yaml > iitj_api.log 2>&1 &
nohup ./xclient -p=7003 -v ./connection-profile-iitkjp.yaml > iitkjp_api.log 2>&1 &

echo "Servers created "
ps -ef | grep -e "xclient"

echo "Log files"
ls -ltrh *.log
