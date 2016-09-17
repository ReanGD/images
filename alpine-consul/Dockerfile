FROM reangd/alpine-base:latest

ENV CONSUL_OPTIONS="-server -bootstrap -client 0.0.0.0 -ui"

RUN CONSUL_VERSION=0.7.0 && \
    CONSUL_BASE_PATH=https://releases.hashicorp.com/consul/${CONSUL_VERSION} && \
    \
    mkdir /var/lib/consul && \
    addgroup consul && \
    adduser -S -D -H -g "" -G consul -s /sbin/nologin consul && \
    chown -R consul:consul /var/lib/consul && \
    mkdir -p /consul/data /consul/ui && \
    \
    apk add --no-cache gnupg && \
    gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C && \
    \
    cd /tmp && \
    curl -sSL ${CONSUL_BASE_PATH}/consul_${CONSUL_VERSION}_linux_amd64.zip -o consul_${CONSUL_VERSION}_linux_amd64.zip && \
    curl -sSL ${CONSUL_BASE_PATH}/consul_${CONSUL_VERSION}_web_ui.zip -o consul_${CONSUL_VERSION}_web_ui.zip && \
    curl -sSL ${CONSUL_BASE_PATH}/consul_${CONSUL_VERSION}_SHA256SUMS -o consul_${CONSUL_VERSION}_SHA256SUMS && \
    curl -sSL ${CONSUL_BASE_PATH}/consul_${CONSUL_VERSION}_SHA256SUMS.sig -o consul_${CONSUL_VERSION}_SHA256SUMS.sig && \
    gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS && \
    grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c && \
    grep consul_${CONSUL_VERSION}_web_ui.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c && \
    unzip consul_${CONSUL_VERSION}_linux_amd64.zip -d /bin && \
    unzip consul_${CONSUL_VERSION}_web_ui.zip -d /consul/ui && \
    rm * && \
    cd / && \
    \
    rm -rf /root/.gnupg && \
    apk del --rdepends gnupg

# 8300 - Server RPC is used for communication between Consul clients and servers
#  for internal request forwarding.
#
# 8301 8301/udp 8302 8302/udp - Serf LAN and WAN
#  (WAN is used only by Consul servers) are used for gossip between
#  Consul agents. LAN is within the datacenter and WAN is between just the Consul
#  servers in all datacenters.
#
# 8400 8500 8600 8600/udp - CLI, HTTP, and DNS (both TCP and UDP)
#  are the primary interfaces that applications
#  use to interact with Consul.
EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp
VOLUME ["/consul/data"]
COPY root /
