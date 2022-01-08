*/1 * * * * /opt/bitnami/wal-g/bin/wal-g backup-push pgdata_dir --config /.walg.json >> /proc/1/fd/1 2>&1
