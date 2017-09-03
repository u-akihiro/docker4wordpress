FROM php:5.6.31-apache
COPY config/php.ini /usr/local/etc/php/
RUN docker-php-ext-install -j$(nproc) pdo_mysql \
    && docker-php-ext-install -j$(nproc) mysqli
