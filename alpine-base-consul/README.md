alpine-base-consul
===


### Image name:
reangd/alpine-base-consul:latest


### Example:
```
docker run -it --rm -p 8500:8500 --env="S6_LOGGING=0" reangd/alpine-consul:latest /bin/bash
docker run -it --rm --env="S6_LOGGING=0" --env="CONSUL_SERVICENAME=foo" reangd/alpine-base-consul:latest /bin/bash
```


### Customizing:
* `S6_LOGGING` (default = 1): 
  * **`0`**: Outputs everything to stdout/stderr.
  * **`1`**: Uses an internal `catch-all` logger and persists everything on it, it is located in `/var/log/s6-uncaught-logs`. Nothing would be written to stdout/stderr.
* `CONSUL_IP` (default = gateway ip): ip of the consul instance (optional)
* `CONSUL_PORT` (default = "8500"): port of the consul instance
* `CONSUL_SERVICENAME` (default = ""): service name to register
* `CONSUL_SERVICEPORT` (default = ""): service port (optional)
* `CONSUL_SERVICETAGS` (default = ""): service tags (optional)
* `CONSUL_CHECKTYPE` (default = "none"): health check type (none/http/tcp)
* `CONSUL_CHECKHTTP` (default = ""): check URL (for http health check)
* `CONSUL_CHECKPORT` (default = ""): custom TCP port if different from CONSUL_SERVICEPORT (for tcp health check)
* `CONSUL_CHECKINTERVAL` (default = "15s"): health check interval (for http/tcp health check)
* `CONSUL_CHECKTIMEOUT` (default = "10s"): health check timeout (for http/tcp health check)


### Environment variables:
* `CONTAINER_HOST`: hostname
* `CONTAINER_IP`: ip
* `CONTAINER_GATEWAY`: gateway
* `CONSUL_ADDRESS`: ip+port of the consul instance

### Volumes:
* `/var/log` - logs directory
