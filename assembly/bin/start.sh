#!/bin/bash

BASE_HOME=$(cd `dirname $0`/..; pwd)
JAVA_HOME=/usr/lib/java/jdk1.8.0_151
PROJECT_NAME=bd-java-demo
JAR_NAME=bd-java-demo-1.0.0-SNAPSHOT.jar
LOG_FILE_NAME=${BASE_HOME}/logs/run-$(date +%Y-%m-%d).log
JAVA_OPTS=""

pid=`ps -ef |grep ${PROJECT_NAME} |grep -v "grep" |awk '{print $2}'`
if [ "$pid" ]; then
    echo "App  is  running  and pid=$pid"
else
   nohup ${JAVA_HOME}/bin/java $JAVA_OPTS -classpath ${BASE_HOME}/lib/*:. -jar ${BASE_HOME}/${JAR_NAME} > ${LOG_FILE_NAME} 2>&1 &
fi