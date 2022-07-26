FROM openjdk:8-jdk-alpine

LABEL maintainer="xinghua<764237865@qq.com>"

ARG SENTINEL_VERSION=1.8.1

WORKDIR /opt/sentinel-dashboard

# time zone
RUN echo "Asia/Shanghai" > /etc/timezone \
    && set -eux \
    && sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk add --update ttf-dejavu fontconfig && rm -rf /var/cache/apk/* \
    && wget https://hub.fastgit.org/alibaba/Sentinel/releases/download/${SENTINEL_VERSION}/sentinel-dashboard-${SENTINEL_VERSION}.jar -S -O /opt/sentinel-dashboard/app.jar \
    && chmod -R +x /opt/sentinel-dashboard/app.jar

ENV JAVA_OPTS=""

EXPOSE 8080

ENTRYPOINT java ${JAVA_OPTS} -jar app.jar