#!/bin/sh

network_nacos=$(docker network ls | grep nacos-server |awk '{print $2}');
if [ "$network_nacos" != "nacos-server" ];then
     echo "nacos网络不存在，正在创建..."
     docker network create --attachable nacos-server
fi
docker-compose down && docker-compose up -d 
