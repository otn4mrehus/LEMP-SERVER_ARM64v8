FROM php:7.4.33-fpm-bullseye

RUN apt-get update && apt-get install -y \
    openssh-server \
    unzip \
    zip \
    curl \
    git \
    nano \
    vim \
    procps \
    net-tools \
    iputils-ping \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libzip-dev \
    libonig-dev \
    libxml2-dev

RUN docker-php-ext-configure gd \
    --with-freetype \
    --with-jpeg

RUN docker-php-ext-install \
    mysqli \
    pdo \
    pdo_mysql \
    mbstring \
    zip \
    gd \
    exif \
    xml \
    opcache

RUN mkdir /var/run/sshd

RUN echo "root:root" | chpasswd

COPY docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

WORKDIR /var/www/html

EXPOSE 9000

ENTRYPOINT ["docker-entrypoint.sh"]