alpine-consul
===


### Image name:
reangd/alpine-consul:latest


### Example:
```
docker run -it --rm -p 8500:8500 --env="S6_LOGGING=0" reangd/alpine-consul:latest /bin/bash
```


### Customizing:
* `S6_LOGGING` (default = 1): 
  * **`0`**: Outputs everything to stdout/stderr.
  * **`1`**: Uses an internal `catch-all` logger and persists everything on it, it is located in `/var/log/s6-uncaught-logs`. Nothing would be written to stdout/stderr.
* `CONSUL_OPTIONS` (default="-server -bootstrap -client 0.0.0.0 -ui"): additional consul params


### Environment variables:
* `CONTAINER_HOST` - hostname
* `CONTAINER_IP` - ip


### Volumes:
* `/var/log` - logs directory
* `/consul/data` - consul data directory


### Ports:
* `8300` - server RPC
* `8301` - serf LAN
* `8302` - serf WAN
* `8400` - CLI RPC
* `8500` - HTTP
* `8600` - DNS
