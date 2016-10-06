FROM reangd/alpine-nginx:latest

ENV CERT_EMAIL="" \
	CERT_DOMAIN=""

RUN apk add --no-cache certbot

VOLUME ["/etc/letsencrypt"]
COPY root /