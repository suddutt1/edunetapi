#!/bin/bash
echo "Removing old running apis"
kill -9 ` ps -ef | grep -e "xclient" | awk '{printf $2 " "}' `
ps -ef | grep -e "xclient"
echo "Removing old logs"
rm *.log
