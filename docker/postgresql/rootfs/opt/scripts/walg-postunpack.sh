#!/bin/bash

# Load libraries
. /opt/bitnami/scripts/libfs.sh
. /opt/bitnami/scripts/libfile.sh

# Load environment variables
. /opt/scripts/walg-env.sh
. /opt/bitnami/scripts/postgresql-env.sh

# add user
adduser --disabled-password --uid $RUN_USER_ID --ingroup root --gecos "" runner

# wal-g configure
touch /.walg.json
owned_by "/.walg.json" $RUN_USER_ID
ensure_dir_exists "$WALG_FILE_PREFIX" $RUN_USER_ID
ln -sf /dev/stdout "$POSTGRESQL_LOG_DIR/archive_command.log"
ln -sf /dev/stdout "$POSTGRESQL_LOG_DIR/restore_command.log"

# cron configure
replace_in_file "/etc/cron.d/backup.sh" "pgdata_dir" "$POSTGRESQL_DATA_DIR" false

chmod u+s /usr/sbin/cron
crontab -u runner /etc/cron.d/backup.sh
