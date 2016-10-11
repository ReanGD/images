alpine-dokuwiki
===


### Image name:
reangd/alpine-dokuwiki:latest


### Example:
```
docker run -it --rm --env="S6_LOGGING=0" -p 80:80 reangd/alpine-dokuwiki:latest /bin/bash
```


And open http://127.0.0.1/dokuwiki/install.php


### Base params:
* [See alpine-base](https://github.com/ReanGD/docker-alpine/blob/master/alpine-base/README.md)


### Customizing:
* `NGINX_OPTIONS` (default = ""): Nginx run params


### Ports:
* `80` - HTTP port
