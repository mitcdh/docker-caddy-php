FROM mitcdh/caddy
MAINTAINER Mitchell Hewes <me@mitcdh.com>

# elevate to root
USER root

# install php
RUN apk --update add \
	php5-fpm \
	php5-curl \
	php5-json \
	php5-xml \
	php5-phar \
	php5-intl \
	php5-dom \
	php5-openssl \
 && rm -rf /var/cache/apk/*

ADD files/php-fpm.conf /etc/php5/php-fpm.conf

EXPOSE 2015
VOLUME /www
WORKDIR /www

USER web-srv
CMD ["/usr/bin/caddy"]
