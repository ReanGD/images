alpine-proxy
===


### Image name:
reangd/alpine-proxy:latest


### Base params:
* [See alpine-base](https://github.com/ReanGD/docker-alpine/blob/master/alpine-base/README.md)


### Customizing:
* `NGINX_OPTIONS` (default = ""): Nginx run params
* `CERT_EMAIL` (default = "admin@example.com"): email for letsencrypt
* `CERT_DOMAIN` (default = "example.com"): domain
* `CERT_PRODACTION` (default = ""): set 1 for create prodaction certificates


### Ports:
* `80` - Local HTTP port
* `443` - External HTTPS port
