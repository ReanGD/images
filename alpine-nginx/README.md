alpine-nginx
===


### Image name:
reangd/alpine-nginx:latest


### Example:
```
docker run -it --rm --env="S6_LOGGING=0" -p 80:80 reangd/alpine-nginx:latest /bin/bash
```


### Base params:
* [See alpine-base](https://github.com/ReanGD/docker-alpine/blob/master/alpine-base/README.md)


### Customizing:
* `NGINX_OPTIONS` (default = ""): Nginx run params


### Ports:
* `80` - HTTP port
* `443` - HTTPS port
