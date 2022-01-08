#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

# Load environment variables
. /opt/scripts/walg-env.sh

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
