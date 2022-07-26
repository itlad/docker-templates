FROM java:8
ENV JAVA_OPTS=""

WORKDIR /opt/app/
ADD target/*.jar app.jar

EXPOSE 8080
ENTRYPOINT java ${JAVA_OPTS} -jar app.jar