#!/usr/bin/env bash

set -e

cd "$(dirname "$(realpath "$0")")"

echo rimraff public
echo ==============

rm -rf public

echo build index
echo ===========

cd index
npm run build
cd ..

mv index/dist public

echo build dualSTAKE
echo ===============

mdbook build dualstake --dest-dir ../public/dualSTAKE/

echo build bench
echo ===============

mdbook build bench --dest-dir ../public/bench/

