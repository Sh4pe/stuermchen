#!/bin/bash

mkdir -p /data/logs

sed -i "s/^zookeeper\.connect=.*$/zookeeper.connect=${ZOO_CONNECTION}/" /opt/kafka/config/server.properties

/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties | tee -a /data/logs/output.log
