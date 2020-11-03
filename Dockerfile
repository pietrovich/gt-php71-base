FROM php:7.1-fpm
MAINTAINER pietrovich@users.noreply.github.com

ADD ./php.ini /usr/local/etc/php/php.ini

RUN apt-get update

#RUN apt-cache search mysql
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
        git \
        curl \
        wget \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        zlib1g-dev \
        libicu-dev \
        libonig-dev \
        g++ \
        libxml2-dev \
        libxslt-dev \
        libgmp-dev \
        default-mysql-client

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
        libmagickwand-dev --no-install-recommends

