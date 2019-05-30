#!/bin/sh

echo "********************************************************"
echo "Waiting for the Configuration server to start..."
echo "********************************************************"
while ! `nc -z config-server 8081`; do sleep 3; done
echo "*******  Configuration Server has started"
echo "********************************************************"
echo "Waiting for the Eureka server to start..."
echo "********************************************************"
while ! `nc -z eureka-server 8761`; do sleep 3; done
echo "*******  EUREKA Server has started"
echo "*******  GATEWAY sleeping 45s to wait for CONF to register with EUREKA"
sleep 45
echo "*******  GATEWAY starting now..."
java -jar /opt/lib/gateway.jar