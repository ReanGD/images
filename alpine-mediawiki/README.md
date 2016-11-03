alpine-mediawiki
===


### Image name:
reangd/alpine-mediawiki:latest


### Example:
```
docker run -it --rm --env="S6_LOGGING=0" -p 80:80 reangd/alpine-mediawiki:latest /bin/bash
```


And open http://127.0.0.1/mediawiki/


### Base params:
* [See alpine-base](https://github.com/ReanGD/docker-alpine/blob/master/alpine-base/README.md)


### Customizing:
* `NGINX_OPTIONS` (default = ""): Nginx run params


### Ports:
* `80` - HTTP port


### TODO:
* add backup and restore
* move settings from LocalSettings.php to settings.php
* Parsoid error: create page over "Создать как исходный текст", "Записать страницу", "Править" - HTTP 0 error