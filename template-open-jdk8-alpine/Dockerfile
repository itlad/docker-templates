FROM openjdk:8-jdk-alpine
ENV JAVA_OPTS=""

RUN set -eux && sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk add --update ttf-dejavu fontconfig tzdata && rm -rf /var/cache/apk/* \
    && echo "Asia/Shanghai" > /etc/timezone && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

WORKDIR /opt/app
ADD target/*.jar app.jar

EXPOSE 8080
ENTRYPOINT java ${JAVA_OPTS} -jar app.jar