#!/bin/bash

DOT=$PWD

NPMDIR="${DOT}/node_modules"

PKG="${DOT}/package.json"

if [ ! -f "$PKG" ]; then
  echo 'Package.json not found. Are you running a We.js project?'
  exit 1
fi

if [ ! -d "$NPMDIR" ]; then
  echo 'NPM module does not exists, try to install with npm install --production'
  npm install --production
fi

exec "$@"