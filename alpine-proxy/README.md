alpine-proxy
===


### Image name:
reangd/alpine-proxy:latest


### Example:
```
docker run -it --rm -p 80:80 -p 443:443 --env="S6_LOGGING=0" --env="CERT_EMAIL=admin@example.com" --env="CERT_DOMAIN=example.com" reangd/alpine-proxy:latest /bin/bash
```


### Base params:
* [See alpine-base](https://github.com/ReanGD/docker-alpine/blob/master/alpine-base/README.md)


### Customizing:
* `NGINX_OPTIONS` (default = ""): Nginx run params
* `CERT_EMAIL` (default = "admin@example.com"): email for letsencrypt
* `CERT_DOMAIN` (default = "example.com"): domain
* `CERT_PRODACTION` (default = ""): set 1 for create prodaction certificates
* `CONSUL_IP` (default = ""): custom ip of the consul instance if different from CONTAINER_GATEWAY
* `CONSUL_PORT` (default = "8500"): port of the consul instance


### Ports:
* `80` - HTTP port
* `443` - HTTPS port
