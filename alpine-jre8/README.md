alpine-jre8
===


### Image name:
reangd/alpine-jre8:latest


### Example:
```
docker run -it --rm -p 8500:8500 --env="S6_LOGGING=0" reangd/alpine-consul:latest /bin/bash
docker run -it --rm --env="S6_LOGGING=0" --env="CONSUL_SERVICENAME=java" reangd/alpine-jre8:latest /bin/bash
```


### Customizing:
* `S6_LOGGING` (default = 1): 
  * **`0`**: Outputs everything to stdout/stderr.
  * **`1`**: Uses an internal `catch-all` logger and persists everything on it, it is located in `/var/log/s6-uncaught-logs`. Nothing would be written to stdout/stderr.
* `CONSUL_XX`: [see alpine-base-consul](https://github.com/ReanGD/docker-alpine/blob/master/alpine-base-consul/README.md)


### Environment variables:
* `CONTAINER_HOST`: hostname
* `CONTAINER_IP`: ip
* `CONTAINER_GATEWAY`: gateway
* `CONSUL_ADDRESS`: ip+port of the consul instance
* `JAVA_HOME`: java home


### Volumes:
* `/var/log` - logs directory
