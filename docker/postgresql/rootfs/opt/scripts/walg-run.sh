#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

# Load libraries
. /opt/bitnami/scripts/libos.sh

info "** Starting Cron **"
cron
