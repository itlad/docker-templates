FROM nginx:1.15
ENV LANG C.UTF-8

ADD conf.d/ /tmp/nginx/conf.d/
RUN rm /etc/nginx/conf.d/* \
    && mv /tmp/nginx/conf.d/* /etc/nginx/conf.d/ \
    && rm -rf /tmp/nginx

COPY dist/* /usr/share/nginx/html/