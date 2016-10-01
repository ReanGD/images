alpine-jenkins
===


### Image name:
reangd/alpine-jenkins:latest


### Example:
```
docker run -it --rm -p 80:8080 --env="S6_LOGGING=0" reangd/alpine-jenkins:latest /bin/bash
```


### Customizing:
* `S6_LOGGING` (default = 1): 
  * **`0`**: Outputs everything to stdout/stderr.
  * **`1`**: Uses an internal `catch-all` logger and persists everything on it, it is located in `/var/log/s6-uncaught-logs`. Nothing would be written to stdout/stderr.
* `JAVA_OPTS`: (default=""): java params
* `JENKINS_OPTS`: (default=""): jenkins params


### Environment variables:
* `CONTAINER_HOST`: hostname
* `CONTAINER_IP`: ip
* `CONTAINER_GATEWAY`: gateway
* `JAVA_HOME`: java home
* `JENKINS_HOME`: jenkins home


### Volumes:
* `/var/log` - logs directory
* `/jenkins` - jenkins data directory
