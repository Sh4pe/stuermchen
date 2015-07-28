#!/bin/bash

/opt/zookeeper/bin/zkServer.sh start-foreground | tee -a /data/logs/zookeeper.out
