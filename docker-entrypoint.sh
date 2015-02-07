#!/bin/sh

set -e

if [ ! -f /data/gitit.conf ]; then
  gitit --print-default-config > /data/gitit.conf
fi

if [ "$1" = 'gitit' ]; then
  exec gitit "$@"
fi

exec "$@"
