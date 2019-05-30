#!/bin/sh

echo "********************************************************"
echo "Waiting for the configuration server to start..."
echo "********************************************************"
while ! `nc -z config-server 8081`; do sleep 3; done
echo "*******  Configuration Server has started"
sleep 3
java -jar /opt/lib/eureka.jar