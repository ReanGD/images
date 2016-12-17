FROM reangd/alpine-nginx:latest

RUN DOKUWIKI_VERSION="2017-02-19a" && \
    apk add --no-cache \
        php5-fpm php5-cgi php5-json php5-gd \
        php5-zip php5-xml php5-zlib php5-openssl \
        php5-pdo_sqlite php5-sqlite3 && \
    \
    sed -i -e "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g" /etc/php5/php.ini && \
    curl -sSL http://download.dokuwiki.org/src/dokuwiki/dokuwiki-${DOKUWIKI_VERSION}.tgz | tar xz -C /tmp && \
    mkdir /www && \
    mv /tmp/dokuwiki-${DOKUWIKI_VERSION}/ /www/dokuwiki && \
    chown -R nobody:www-data /www && \
    chmod -R 644 /www && \
    find /www -type d -exec chmod 0755 {} ';' && \
    \
    mkdir -p /origin/lib && \
    cp -rp /www/dokuwiki/data /origin/ && \
    cp -rp /www/dokuwiki/conf /origin/ && \
    cp -rp /www/dokuwiki/lib/plugins /origin/lib/ && \
    cp -rp /www/dokuwiki/lib/tpl /origin/lib/ && \
    \
    rm -rf /www/dokuwiki/data /www/dokuwiki/conf /www/dokuwiki/lib/plugins /www/dokuwiki/lib/tpl && \
    ln -s /data/data /www/dokuwiki/data && \
    ln -s /data/conf /www/dokuwiki/conf && \
    ln -s /data/lib/plugins /www/dokuwiki/lib/plugins && \
    ln -s /data/lib/tpl /www/dokuwiki/lib/tpl

COPY root /
