FROM reangd/alpine-base:latest

ENV CONSUL_IP="" \
    CONSUL_PORT="8500" \
    CONSUL_SERVICENAME="" \
    CONSUL_SERVICEPORT="" \
    CONSUL_SERVICETAGS="" \
    CONSUL_CHECKTYPE="none" \
    CONSUL_CHECKHTTP="" \
    CONSUL_CHECKPORT="" \
    CONSUL_CHECKINTERVAL="15s" \
    CONSUL_CHECKTIMEOUT="10s"


RUN CONSULTEMPLATE_VERSION=0.15.0 && \
    CONSULTEMPLATE_BASE_PATH=https://releases.hashicorp.com/consul-template/${CONSULTEMPLATE_VERSION} && \
    \
    addgroup consul && \
    adduser -S -D -H -g "" -G consul -s /sbin/nologin consul && \
    \
    apk add --no-cache gnupg && \
    gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C && \
    \
    cd /tmp && \
    curl -sSL ${CONSULTEMPLATE_BASE_PATH}/consul-template_${CONSULTEMPLATE_VERSION}_linux_amd64.zip -o consul-template_${CONSULTEMPLATE_VERSION}_linux_amd64.zip && \
    curl -sSL ${CONSULTEMPLATE_BASE_PATH}/consul-template_${CONSULTEMPLATE_VERSION}_SHA256SUMS -o consul-template_${CONSULTEMPLATE_VERSION}_SHA256SUMS && \
    curl -sSL ${CONSULTEMPLATE_BASE_PATH}/consul-template_${CONSULTEMPLATE_VERSION}_SHA256SUMS.sig -o consul-template_${CONSULTEMPLATE_VERSION}_SHA256SUMS.sig && \
    gpg --batch --verify consul-template_${CONSULTEMPLATE_VERSION}_SHA256SUMS.sig consul-template_${CONSULTEMPLATE_VERSION}_SHA256SUMS && \
    grep consul-template_${CONSULTEMPLATE_VERSION}_linux_amd64.zip consul-template_${CONSULTEMPLATE_VERSION}_SHA256SUMS | sha256sum -c && \
    unzip consul-template_${CONSULTEMPLATE_VERSION}_linux_amd64.zip -d /bin && \
    rm * && \
    cd / && \
    \
    rm -rf /root/.gnupg && \
    apk del --rdepends --purge gnupg

COPY root /
