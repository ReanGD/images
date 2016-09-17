alpine-base
===


### Images name:
reangd/alpine-base:latest


### Customizing:
* `S6_LOGGING` (default = 1): 
  * **`0`**: Outputs everything to stdout/stderr.
  * **`1`**: Uses an internal `catch-all` logger and persists everything on it, it is located in `/var/log/s6-uncaught-logs`. Nothing would be written to stdout/stderr.


### Environment variables:
* `CONTAINER_HOST` - hostname
* `CONTAINER_IP` - ip


### Volumes:
* `/var/log` - logs directory