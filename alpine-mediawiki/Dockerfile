FROM reangd/alpine-nginx:latest

RUN addgroup parsoid && \
    adduser -D -H -g "" -G parsoid -s /sbin/nologin parsoid && \
    \
    apk add --no-cache diffutils git nodejs \
    php5-pdo php5-pdo_sqlite php5-xmlreader php5-openssl \
    php5-fpm php5-curl php5-ctype php5-xcache php5-gd \
    php5-xml php5-json php5-iconv php5-ctype \
    php5-dom php5-intl php5-ctype php5-zlib

COPY init /

RUN /usr/bin/load_mediawiki && \
    /usr/bin/load_parsoid

COPY root /
