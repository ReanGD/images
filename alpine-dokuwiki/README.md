alpine-dokuwiki
===


### Image name:
reangd/alpine-dokuwiki:latest


### Example:
```
docker run -it --rm --env="S6_LOGGING=0" -p 80:80 reangd/alpine-dokuwiki:latest /bin/bash
```

And open http://127.0.0.1/install.php


### Customizing:
* `S6_LOGGING` (default = 1): 
  * **`0`**: Outputs everything to stdout/stderr.
  * **`1`**: Uses an internal `catch-all` logger and persists everything on it, it is located in `/var/log/s6-uncaught-logs`. Nothing would be written to stdout/stderr.
* `NGINX_OPTIONS` (default = ""): Nginx run params


### Environment variables:
* `CONTAINER_HOST`: hostname
* `CONTAINER_IP`: ip
* `CONTAINER_GATEWAY`: gateway


### Volumes:
* `/var/log` - logs directory
* `/data` - dokuwiki data directory