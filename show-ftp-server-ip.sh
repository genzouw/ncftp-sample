#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o noclobber

docker inspect ftp-server \
  | jq -r ".[].NetworkSettings.Networks.bridge.IPAddress"
