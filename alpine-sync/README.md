alpine-sync
===


### Image name:
reangd/alpine-sync:latest


### Example:
```
docker run -it --rm --env="S6_LOGGING=0" -p 80:80 reangd/alpine-sync:latest /bin/bash
```


### Base params:
* [See alpine-base](https://github.com/ReanGD/docker-alpine/blob/master/alpine-base/README.md)


### Ports:
* `80` - HTTP port


### Volumes:
* `/storage` - directory with container media files