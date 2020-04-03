#!/bin/bash

DOT=$PWD
NPMDIR="${DOT}/node_modules"
PKG="${DOT}/package.json"

if [ ! -f "$PKG" ]; then
  echo 'Package.json not found. Are you running a We.js project or in project folder?'
  exit 1
fi

if [ ! -d "$NPMDIR" ]; then
  echo "NPM module does not exists, running 'npm install --no-audit' with NODE_ENV=${NODE_ENV}"
  npm install --no-audit
fi

exec "$@"