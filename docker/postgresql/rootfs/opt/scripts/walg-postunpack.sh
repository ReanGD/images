#!/bin/bash

# Load libraries
. /opt/bitnami/scripts/libfs.sh

# Load environment variables
. /opt/scripts/walg-env.sh
. /opt/bitnami/scripts/postgresql-env.sh

# consts
user_id="1000"

# wal-g configure
touch /.walg.json
owned_by "/.walg.json" $user_id
ensure_dir_exists "$WALG_FILE_PREFIX" $user_id
ln -sf /dev/stdout "$POSTGRESQL_LOG_DIR/archive_command.log"
ln -sf /dev/stdout "$POSTGRESQL_LOG_DIR/restore_command.log"

# cron configure
chmod u+s /usr/sbin/cron
