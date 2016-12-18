alpine-tor
===


### Image name:
reangd/alpine-tor:latest


### Example:
```
docker run -it --rm -p 9050:9050 --env="S6_LOGGING=0" --env="S6_LOGGING=0" reangd/alpine-tor:latest /bin/bash
curl --socks5 127.0.0.1:9050 https://www.google.com
```

### Base params:
* [See alpine-base](https://github.com/ReanGD/docker-alpine/blob/master/alpine-base/README.md)

### Ports:
* `9050` - Proxy port
