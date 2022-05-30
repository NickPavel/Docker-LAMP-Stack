FROM debian:bullseye

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y \
 zip \
 unzip \
 apache2 \
	mariadb-server \
	php \
	php-mysql \
	php-gd \
	php-curl \
	php-xml \
	php-mbstring

RUN a2enmod rewrite
RUN a2enmod headers

VOLUME /var/www/html
VOLUME /var/log/apache2
VOLUME /etc/apache2/sites-available

EXPOSE 80
