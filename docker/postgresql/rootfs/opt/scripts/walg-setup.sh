#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

# Load libraries
. /opt/bitnami/scripts/libfile.sh

# Load environment variables
. /opt/scripts/walg-env.sh
. /opt/bitnami/scripts/postgresql-env.sh

# create wal-g config
cat > /.walg.json << EOF
{
    "PGUSER": "postgres",
    "PGHOST": "/tmp/.s.PGSQL.5432",
    "WALG_FILE_PREFIX": "$WALG_FILE_PREFIX",
    "WALG_DOWNLOAD_CONCURRENCY": "$WALG_DOWNLOAD_CONCURRENCY",
    "WALG_COMPRESSION_METHOD": "$WALG_COMPRESSION_METHOD",
    "WALG_DELTA_MAX_STEPS": "$WALG_DELTA_MAX_STEPS"
}
EOF

# create cron config
replace_in_file "/etc/cron.d/backup.sh" "pgdata_dir" "$POSTGRESQL_DATA_DIR" false
replace_in_file "/etc/cron.d/backup.sh" "backup_add_time" "$WALG_BACKUP_ADD_TIME" false
replace_in_file "/etc/cron.d/backup.sh" "backup_del_time" "$WALG_BACKUP_DEL_TIME" false
replace_in_file "/etc/cron.d/backup.sh" "backup_del_retain" "$WALG_BACKUP_DEL_RETAIN" false
crontab -u runner /etc/cron.d/backup.sh
