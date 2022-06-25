FROM php:7.4-fpm-alpine

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions gd xdebug @composer pdo_mysql

ADD symfony.pool.conf /usr/local/etc/php/php-fpm.d/

CMD ["php-fpm", "-F"]

WORKDIR /var/www/symfony
EXPOSE 9000
