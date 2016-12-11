alpine-base
===


### Image name:
reangd/alpine-base:latest


### Example:
```
docker run -it --rm --env="S6_LOGGING=0" reangd/alpine-base:latest /bin/bash
docker run --rm --env="S6_LOGGING=0" --env="RESTORE_NAME=daily.0" -v /home/rean/tmp/test:/data -v /home/rean/tmp/backup:/backup reangd/alpine-base:latest
```


### Customizing:
* `TZ` (defaul = Europe/Moscow): timezone
* `S6_LOGGING` (default = 1):
  * **`0`**: Outputs everything to stdout/stderr.
  * **`1`**: Uses an internal `catch-all` logger and persists everything on it, it is located in `/var/log/s6-uncaught-logs`. Nothing would be written to stdout/stderr.
* `SERVICE_CRON` (defaul = auto): is enable run cron service
* `RESTORE_NAME` (defaul = ""): backup name for the restore (for example: "daily.0")


### Environment variables:
* `CONTAINER_HOST`: hostname
* `CONTAINER_IP`: ip
* `CONTAINER_GATEWAY`: gateway
* `CONTAINER_BACKUP`: is enable rsnapshot backup (enabled if exists `/backup` directory)


### Volumes:
* `/var/log` - logs directory
* `/backup` - backup directory
* `/data` - directory with container data