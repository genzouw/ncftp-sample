#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o noclobber

docker run \
  --rm \
  -v "$PWD":/workdir \
  --platform 'linux/amd64' \
  -p 21:21 \
  -p 30000-30009:30000-30009 \
  -e FTP_USER_NAME=bob \
  -e FTP_USER_PASS=12345 \
  -e FTP_USER_HOME=/workdir \
  --name ftp-server \
  --workdir /workdir \
  stilliard/pure-ftpd
