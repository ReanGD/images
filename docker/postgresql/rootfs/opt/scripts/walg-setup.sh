#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

# Load libraries
. /opt/bitnami/scripts/liblog.sh
. /opt/bitnami/scripts/libfile.sh

# Load environment variables
. /opt/scripts/walg-env.sh

info "** Starting wal-g setup **"

# create wal-g config
cat > /home/runner/.walg.json << EOF
{
    "PGUSER": "postgres",
    "PGHOST": "/tmp/.s.PGSQL.5432",
    "WALG_FILE_PREFIX": "$WALG_RESTORE_DIR",
    "WALG_DOWNLOAD_CONCURRENCY": "$WALG_DOWNLOAD_CONCURRENCY",
    "WALG_COMPRESSION_METHOD": "$WALG_COMPRESSION_METHOD",
    "WALG_DELTA_MAX_STEPS": "$WALG_DELTA_MAX_STEPS"
}
EOF

# create cron config
replace_in_file "/etc/cron.d/cron_job.sh" "backup_time" "$WALG_BACKUP_TIME" false

replace_in_file "/opt/scripts/backup.sh" "pgdata_dir" "$POSTGRESQL_DATA_DIR" false
replace_in_file "/opt/scripts/backup.sh" "backup_del_retain" "$WALG_BACKUP_DEL_RETAIN" false

crontab -u runner /etc/cron.d/cron_job.sh

info "** Wal-g setup finished! **"
