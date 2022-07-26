#!/bin/sh

#get the latest snapshot version
#VERSION=LATEST
#REPO=snapshots

VERSION=3.3.1
REPO=releases

CONSOLE_DL_URL="https://oss.sonatype.org/service/local/artifact/maven/content?r=${REPO}&g=com.vip.saturn&a=saturn-console&c=exec&v=${VERSION}"

docker build -t saturn/saturn-db:${VERSION} ./saturn-db/
docker build --build-arg SATURN_CONSOLE_DOWNLOAD_URL=$CONSOLE_DL_URL -t saturn/saturn-console:${VERSION} ./saturn-console/

docker-compose up
