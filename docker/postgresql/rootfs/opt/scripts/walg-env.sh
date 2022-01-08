#!/bin/bash

# common settings
export RUN_USER_ID="1000"

# wal-g settings
export WALG_FILE_PREFIX="/backup"
export WALG_DOWNLOAD_CONCURRENCY="1"
export WALG_COMPRESSION_METHOD="${WALG_COMPRESSION_METHOD:-brotli}"
export WALG_DELTA_MAX_STEPS="${WALG_DELTA_MAX_STEPS:-6}"

# backup seyttings
