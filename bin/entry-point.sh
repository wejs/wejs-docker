#!/bin/bash

dot="$(cd "$(dirname "$0")"; pwd)"

NPMDIR="${dot}/node_modules"

echo $NPMDIR

PKG="${dot}/package.json"

if test -f "$PKG"; then
  echo 'Package.json not found. Are you running a We.js project?'
  ls -al .
  ls -al ./node_modules
fi

if [ ! -d "$NPMDIR" ]; then
  echo 'NPM module does not exists, try to install with npm install --production'
  npm install --production
fi

exec "$@"