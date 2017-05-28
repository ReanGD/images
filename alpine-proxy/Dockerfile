FROM reangd/alpine-nginx:latest

ENV CERT_EMAIL="" \
    CERT_DOMAIN="" \
    CERT_PRODACTION=""

RUN apk add --no-cache certbot gnupg && \
    gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C && \
    rm -rf /root/.gnupg && \
    apk del --rdepends --purge gnupg

COPY root /
