FROM java:8

ARG SATURN_CONSOLE_DOWNLOAD_URL

RUN wget ${SATURN_CONSOLE_DOWNLOAD_URL} -O saturn-console.jar

ENV TZ "Asia/Shanghai"

EXPOSE 9088

CMD ["java", "-Dsaturn.stdout=true", "-Dserver.port=9088", "-Dauthentication.enabled=false","-Dauthorization.enabled.default=false", "-jar", "saturn-console.jar"]
