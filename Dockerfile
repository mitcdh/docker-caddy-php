FROM mitcdh/caddy:edge
MAINTAINER Mitchell Hewes <me@mitcdh.com>

# install php
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories \
 && apk --update add \
	php7-apcu \
	php7-bcmath \
	php7-ctype \
	php7-curl \
	php7-dom \
	php7-fpm \
	php7-gd \
	php7-iconv \
	php7-intl \
	php7-json \
	php7-opcache \
	php7-openssl \
	php7-pdo \
	php7-pdo_sqlite \
	php7-phar \
	php7-sqlite3 \
	php7-xml \
	php7-xmlreader \
	php7-zlib \
 && rm -rf /var/cache/apk/* \
 && { \
 		echo 'opcache.memory_consumption=128'; \
 		echo 'opcache.interned_strings_buffer=8'; \
 		echo 'opcache.max_accelerated_files=4000'; \
 		echo 'opcache.revalidate_freq=2'; \
 		echo 'opcache.fast_shutdown=1'; \
 		echo 'opcache.enable_cli=1'; \
 	} > /etc/php7/conf.d/opcache-recommended.ini

ADD files/php-fpm.conf /etc/php7/php-fpm.conf