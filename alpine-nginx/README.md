alpine-nginx
===


### Image name:
reangd/alpine-nginx:latest


### Example:
```
docker run -it --rm --env="S6_LOGGING=0" -p 80:80 reangd/alpine-nginx:latest /bin/bash
```


### Customizing:
* `S6_LOGGING` (default = 1): 
  * **`0`**: Outputs everything to stdout/stderr.
  * **`1`**: Uses an internal `catch-all` logger and persists everything on it, it is located in `/var/log/s6-uncaught-logs`. Nothing would be written to stdout/stderr.


### Environment variables:
* `CONTAINER_HOST`: hostname
* `CONTAINER_IP`: ip
* `CONTAINER_GATEWAY`: gateway


### Volumes:
* `/var/log` - logs directory