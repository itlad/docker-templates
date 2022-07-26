FROM php:7.3.8-apache-stretch
ENV DZZOFFICE_VERSION 2.02

COPY etc/apt/sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y libzip-dev libfreetype6-dev wget \
  && docker-php-ext-install mysqli \
  && docker-php-ext-install gd \
  && docker-php-ext-install zip

RUN wget -O /tmp/dzzoffice-${DZZOFFICE_VERSION}.tar.gz https://hub.fastgit.org/zyx0814/dzzoffice/archive/refs/tags/${DZZOFFICE_VERSION}.tar.gz \
  && tar -xzvf /tmp/dzzoffice-${DZZOFFICE_VERSION}.tar.gz -C /tmp \
  && rm -rf /tmp/dzzoffice-${DZZOFFICE_VERSION}.tar.gz /tmp/dzzoffice-${DZZOFFICE_VERSION}/*.md \
  && mv /tmp/dzzoffice-${DZZOFFICE_VERSION}/* /var/www/html/ \
  && chown -R www-data:www-data /var/www/html/