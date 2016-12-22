#!/bin/sh
mkdir -p redisdb
mkdir -p sqldb
export CONFIG_DIR_PATH=/home/uit/ws/repo/dockerize-mboxcenter/config
export MEDIDA_DIR_PATH=/home/uit/ws/repo/dockerize-mboxcenter/mcenter/ftproot/demo
export ICECAST_PASSWORD=12345
docker-compose up -d --force-recreate

