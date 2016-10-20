FROM reangd/alpine-nginx:latest

RUN apk add --no-cache diffutils git nodejs \
    php5-pdo php5-pdo_sqlite php5-xcache \
    php5-fpm php5-curl php5-ctype php5-gd php5-openssl \
    php5-xml php5-json php5-iconv php5-ctype php5-zlib \
    php5-dom php5-intl php5-ctype php5-openssl

COPY init /

RUN /usr/bin/load_mediawiki && \
    /usr/bin/load_parsoid

COPY root /
