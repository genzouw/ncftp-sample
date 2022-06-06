#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o noclobber

ncftp -u bob -p 12345 localhost <<<"get -R ."
