alpine-dokuwiki
===


### Image name:
reangd/alpine-dokuwiki:latest


### Example:
```
docker run -it --rm --env="S6_LOGGING=0" -p 80:80 reangd/alpine-dokuwiki:latest /bin/bash
docker run --rm --env="S6_LOGGING=0" --env="RESTORE_NAME=daily.0" -v /home/rean/docker/data/dokuwiki:/data -v /net/backup/dokuwiki:/backup reangd/alpine-dokuwiki:latest
```


And open http://127.0.0.1/dokuwiki/install.php


### Base params:
* [See alpine-base](https://github.com/ReanGD/docker-alpine/blob/master/alpine-base/README.md)


### Customizing:
* `NGINX_OPTIONS` (default = ""): Nginx run params


### Ports:
* `80` - HTTP port
