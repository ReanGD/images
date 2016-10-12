alpine-registrator
===


### Image name:
reangd/alpine-registrator:latest


### Example:
```
docker run -it --rm --env="S6_LOGGING=0" --volume=/var/run/docker.sock:/tmp/docker.sock reangd/alpine-registrator:latest /bin/bash
```


### Base params:
* [See alpine-base](https://github.com/ReanGD/docker-alpine/blob/master/alpine-base/README.md)


### Customizing:
* `CONSUL_IP` (default = ""): custom ip of the consul instance if different from CONTAINER_GATEWAY
* `CONSUL_PORT` (default = "8500"): port of the consul instance
* `REGISTRATOR_OPTIONS` (default = "-internal"): registrator addition params
