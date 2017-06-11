alpine-cadvisor
===


### Image name:
reangd/alpine-cadvisor:latest


### Example:
```
docker run -it --rm --env="S6_LOGGING=0" -p 8080:8080 reangd/alpine-cadvisor:latest /bin/bash
```


### Base params:
* [See alpine-base](https://github.com/ReanGD/docker-alpine/blob/master/alpine-base/README.md)


### Customizing:
* `CADVISOR_OPTIONS` (default = "-logtostderr"): Cadvisor run params


### Ports:
* `8080` - HTTP port
