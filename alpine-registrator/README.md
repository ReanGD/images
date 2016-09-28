alpine-registrator
===


### Image name:
reangd/alpine-registrator:latest


### Example:
```
docker run -it --rm --env="S6_LOGGING=0" --volume=/var/run/docker.sock:/tmp/docker.sock reangd/alpine-registrator:latest /bin/bash
```


### Customizing:
* `S6_LOGGING` (default = 1): 
  * **`0`**: Outputs everything to stdout/stderr.
  * **`1`**: Uses an internal `catch-all` logger and persists everything on it, it is located in `/var/log/s6-uncaught-logs`. Nothing would be written to stdout/stderr.
* `CONSUL_IP` (default = ""): custom ip of the consul instance if different from CONTAINER_GATEWAY
* `CONSUL_PORT` (default = "8500"): port of the consul instance
* `REGISTRATOR_OPTIONS` (default = "-internal"): registrator addition params


### Environment variables:
* `CONTAINER_HOST`: hostname
* `CONTAINER_IP`: ip
* `CONTAINER_GATEWAY`: gateway


### Volumes:
* `/var/log` - logs directory