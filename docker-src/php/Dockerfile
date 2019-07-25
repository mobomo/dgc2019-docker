FROM php:fpm-alpine

# Install extensions
RUN apk add --no-cache mariadb-client curl curl-dev freetype freetype-dev libpng libpng-dev libjpeg-turbo libjpeg-turbo-dev libzip libzip-dev \
  && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/ \
  && docker-php-ext-install -j$(nproc) gd pdo_mysql curl mbstring opcache zip \
  && apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev curl-dev libzip-dev

# Set working directory
WORKDIR /drupal/www
