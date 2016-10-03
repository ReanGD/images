FROM reangd/alpine-nginx:latest

RUN DOKUWIKI_VERSION="2016-06-26a" && \
    apk add --no-cache php5-fpm php5-cgi php5-gd php5-xml php5-zlib php5-zip php5-openssl && \
    sed -i -e "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g" /etc/php5/php.ini && \
    curl -sSL http://download.dokuwiki.org/src/dokuwiki/dokuwiki-${DOKUWIKI_VERSION}.tgz | tar xz -C /tmp && \
    mv /tmp/dokuwiki-2016-06-26a/ /dokuwiki && \
    chown -R nobody:www-data /dokuwiki && \
    chmod -R 644 /dokuwiki && \
    find /dokuwiki -type d -exec chmod 0755 {} ';' && \
    \
    mkdir -p /backup/lib && \
    cp -rp /dokuwiki/data /backup/ && \
    cp -rp /dokuwiki/conf /backup/ && \
    cp -rp /dokuwiki/lib/plugins /backup/lib/ && \
    cp -rp /dokuwiki/lib/tpl /backup/lib/ && \
    \
    mkdir /data && \
    rm -rf /dokuwiki/data /dokuwiki/conf /dokuwiki/lib/plugins /dokuwiki/lib/tpl && \
    ln -s /data/data /dokuwiki/data && \
    ln -s /data/conf /dokuwiki/conf && \
    ln -s /data/lib/plugins /dokuwiki/lib/plugins && \
    ln -s /data/lib/tpl /dokuwiki/lib/tpl

VOLUME ["/data"]
COPY root /
