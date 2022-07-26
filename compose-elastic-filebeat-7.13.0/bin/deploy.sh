#!/bin/bash
echo "清理旧的服务..."
docker service ls |grep filebeat-agent | awk '{print "docker service rm "$1}'| sh
docker config ls |grep filebeat_config | awk '{print "docker config rm "$1}' | sh

echo "开始创建新的服务..."
docker stack deploy -c filebeat.stack.yml filebeat --with-registry-auth