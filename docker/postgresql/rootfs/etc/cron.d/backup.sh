backup_add_time /opt/bitnami/wal-g/bin/wal-g backup-push pgdata_dir --config /.walg.json >> /proc/1/fd/1 2>&1
backup_del_time /opt/bitnami/wal-g/bin/wal-g delete retain FULL backup_del_retain --confirm --config /.walg.json >> /proc/1/fd/1 2>&1
