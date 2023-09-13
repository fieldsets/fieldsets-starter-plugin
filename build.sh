#!/usr/bin/env bash

#===
# build.sh: Build Plugin before containers start.
# See shell coding standards for details of formatting.
# https://github.com/fieldsets/fieldsets/blob/main/docs/developer/coding-standards/shell.md
#
# @envvar VERSION | String
# @envvar ENVIRONMENT | String
#
#===

set -eEa -o pipefail

#===
# Variables
#===
last_checkpoint="/fieldsets-plugins/fieldsets-starter-plugin/build.sh"
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

#===
# Functions
#===

source /fieldsets-lib/shell/utils.sh

##
# build: Build plugin
##
build() {
    log "Building Plugin...."
    log "Plugin Built..."
}

#===
# Main
#===
trap traperr ERR

build