FROM reangd/alpine-base:latest

ENV CONSUL_IP="" \
    CONSUL_PORT="8500" \
    REGISTRATOR_OPTIONS="-internal"

RUN REGISTRATOR_VER=7 && \
    apk add --no-cache curl && \
    apk add --no-cache go git gcc libc-dev && \
    mkdir -p /tmp/src/github.com/gliderlabs/ && \
    curl -sSL https://github.com/gliderlabs/registrator/archive/v${REGISTRATOR_VER}.tar.gz | tar xz -C /tmp/src/github.com/gliderlabs/ && \
    cd /tmp/src/github.com/gliderlabs/registrator-${REGISTRATOR_VER} && \
    export GOPATH=/tmp && \
    go get && \
    go build -ldflags "-X main.Version=$(cat VERSION)" -o /bin/registrator && \
    cd / && \
    rm -rf /tmp/* && \
    apk del --rdepends --purge curl && \
    apk del --rdepends --purge go git gcc libc-dev

COPY root /
