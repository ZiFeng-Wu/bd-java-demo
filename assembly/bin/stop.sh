#!/bin/bash

BASE_HOME=$(cd `dirname $0`/..; pwd)
JAVA_HOME=/usr/lib/java/jdk1.8.0_151
PROJECT_NAME=bd-java-demo

pid=`ps -ef |grep ${PROJECT_NAME} |grep -v "grep" |awk '{print $2}' `
if [ "$pid" ]; then
    echo "App  is  running  and pid=$pid"
    kill -9 ${pid}
    if [[ $? -eq 0 ]];then
       echo "success to stop ${PROJECT_NAME}"
    else
       echo "fail to stop ${PROJECT_NAME}"
     fi
fi