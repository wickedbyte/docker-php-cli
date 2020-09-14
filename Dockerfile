FROM php:7.4-cli-alpine

ARG BUILD_DATE
ARG REVISION

LABEL org.opencontainers.image.created=$BUILD_DATE
LABEL org.opencontainers.image.vendor="WickedByte LLC"
LABEL org.opencontainers.image.authors="Andy Snell <andy@wickedbyte.com>"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.title="Docker PHP CLI (7.4)"
LABEL org.opencontainers.image.description="Command Line PHP Runtime (PHP 7.4)"
LABEL org.opencontainers.image.source="https://github.com/wickedbyte/docker-php-cli"
LABEL org.opencontainers.image.version="0.0.1"
LABEL org.opencontainers.image.revision=$REVISION

# Install dependencies
RUN apk add --no-cache \
    autoconf \
    build-base  \
    gcc  \
    wget  \
    git \
    zlib-dev \
    bash \
    libzip-dev \
    zip \
    unzip \
    curl \
    libpng-dev \
    libxml2-dev \
    gmp \
    gmp-dev

# Install extensions
RUN docker-php-ext-install -j$(nproc) pdo_mysql zip exif bcmath pcntl gd gmp \
     && pecl install ds && docker-php-ext-enable ds

# Install composer
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer global require --update-no-dev --prefer-dist \
        psy/psysh:@stable \
        nesbot/carbon \
        laravel/installer \
        laravel-zero/installer \
        icanhazstring/composer-unused \
    && composer clear-cache

# Copy Bash RC with Aliases
COPY .bashrc /root/.bashrc

# Set Working Directory
WORKDIR /app