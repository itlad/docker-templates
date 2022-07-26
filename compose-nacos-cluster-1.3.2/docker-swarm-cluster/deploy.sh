#!/bin/bash                                                                                                                                                                                                                        
                                                                                                                                                                                                                                   
# automatically export all variables
set -a
source .env
set +a
docker network create --driver overlay --attachable nacos-server
docker stack deploy -c docker-compose.yml nacos-server