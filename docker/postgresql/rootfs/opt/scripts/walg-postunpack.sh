#!/bin/bash

# Load libraries
. /opt/bitnami/scripts/libfs.sh

# Load environment variables
. /opt/scripts/walg-env.sh

# add user
adduser --disabled-password --uid $RUN_USER_ID --ingroup root --gecos "" runner

# wal-g configure
ensure_dir_exists "$WALG_FILE_PREFIX" $RUN_USER_ID

# cron configure
chmod u+s /usr/sbin/cron
