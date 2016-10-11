alpine-consul
===


### Image name:
reangd/alpine-consul:latest


### Example:
```
docker run -it --rm -p 8500:8500 --env="S6_LOGGING=0" reangd/alpine-consul:latest /bin/bash
```


### Base params:
* [See alpine-base](https://github.com/ReanGD/docker-alpine/blob/master/alpine-base/README.md)


### Customizing:
* `CONSUL_OPTIONS` (default="-server -bootstrap -client 0.0.0.0 -ui"): additional consul params


### Ports:
* `8300` - server RPC
* `8301` - serf LAN
* `8302` - serf WAN
* `8400` - CLI RPC
* `8500` - HTTP
* `8600` - DNS
