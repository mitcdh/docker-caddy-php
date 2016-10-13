FROM mitcdh/caddy
MAINTAINER Mitchell Hewes <me@mitcdh.com>

# install php
RUN apk --update add \
	php5-apcu \
	php5-bcmath \
	php5-ctype \
	php5-curl \
	php5-dom \
	php5-fpm \
	php5-gd \
	php5-iconv \
	php5-intl \
	php5-json \
	php5-opcache \
	php5-openssl \
	php5-pdo \
	php5-pdo_sqlite \
	php5-phar \
	php5-sqlite3 \
	php5-xml \
	php5-xmlreader \
	php5-zlib \
 && rm -rf /var/cache/apk/*

ADD files/php-fpm.conf /etc/php5/php-fpm.conf
