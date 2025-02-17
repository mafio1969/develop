FROM php:7.4-apache
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-3.0.1
RUN docker-php-ext-enable xdebug
RUN apt-get -y update \
&& apt-get install -y libicu-dev\
&& docker-php-ext-configure intl \
&& docker-php-ext-install intl
RUN echo "xdebug.mode=debug" >> /usr/local/etc/php/php.ini