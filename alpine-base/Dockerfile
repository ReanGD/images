FROM alpine:3.4

ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2 \
    S6_LOGGING=1 \
    CONTAINER_BACKUP="" \
    LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    TERM=xterm

RUN S6_OVERLAY_VERSION=v1.18.1.5 && \
    apk add --no-cache bash bind-tools ca-certificates curl jq rsnapshot && \
    curl -sSL https://github.com/just-containers/s6-overlay/releases/download/${S6_OVERLAY_VERSION}/s6-overlay-amd64.tar.gz | tar xz -C /

ENTRYPOINT [ "/init" ]
VOLUME ["/var/log", "/backup"]
COPY root /
