#!/bin/bash

# shellcheck disable=SC1091

set -o errexit
set -o nounset
set -o pipefail
# set -o xtrace # Uncomment this line for debugging purpose

# Load libraries
. /opt/bitnami/scripts/libpostgresql.sh
. /opt/bitnami/scripts/libos.sh

# Load PostgreSQL environment variables
. /opt/bitnami/scripts/postgresql-env.sh

flags=("-D" "$POSTGRESQL_DATA_DIR" "--config-file=$POSTGRESQL_CONF_FILE" "--external_pid_file=$POSTGRESQL_PID_FILE" "--hba_file=$POSTGRESQL_PGHBA_FILE")
cmd=$(command -v postgres)

/opt/scripts/walg-run.sh

info "** Starting PostgreSQL **"
if am_i_root; then
    exec gosu "$POSTGRESQL_DAEMON_USER" "$cmd" "${flags[@]}"
else
    exec "$cmd" "${flags[@]}"
fi
