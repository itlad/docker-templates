FROM tomcat:8.5.68-jdk8-openjdk

ADD ./ROOT.war /tmp/tomcat/ROOT.war
RUN rm -rf /usr/local/tomcat/webapps/ \
    && mv /tmp/ROOT.war /usr/local/tomcat/webapps/ \ 
    && rm -rf /tmp/tomcat

# 显示控制台
CMD ["catalina.sh", "run"]

# 不显示控制台
# CMD [ "startup.sh" ]