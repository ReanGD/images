#!/bin/bash

install_packages wget cron

# download wal-g
wget -nc -P /tmp/bitnami/pkg/cache/ https://downloads.bitnami.com/files/stacksmith/wal-g-1.1.0-0-linux-amd64-debian-10.tar.gz && \
    echo "ab38517a0928c9a4d69ea7af502a526614e5cdab9eecf68817714fbaa166d4da  /tmp/bitnami/pkg/cache/wal-g-1.1.0-0-linux-amd64-debian-10.tar.gz" | sha256sum -c - && \
    tar -zxf /tmp/bitnami/pkg/cache/wal-g-1.1.0-0-linux-amd64-debian-10.tar.gz -P --transform 's|^[^/]*/files|/opt/bitnami|' --wildcards '*/files' && \
    rm -rf /tmp/bitnami/pkg/cache/wal-g-1.1.0-0-linux-amd64-debian-10.tar.gz
