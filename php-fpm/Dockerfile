FROM php:8.2-fpm-alpine
ARG UID
ARG GID

#ENV UID=${UID}
#ENV GID=${GID}

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions gd xdebug exif intl @composer pdo_mysql
RUN apk add acl
RUN addgroup -g ${GID} --system web-user
RUN adduser -G web-user -D -s /bin/sh -u ${UID} web-user
ADD symfony.pool.conf /usr/local/etc/php/php-fpm.d/

CMD ["php-fpm", "-F"]
USER web-user
WORKDIR /var/www/symfony
EXPOSE 9000
