#!/usr/bin/env bash

rm -rf ../test-mass-merge-no-fast-forward
mkdir ../test-mass-merge-no-fast-forward
cp mass-merge-no-fast-forward.sh ../test-mass-merge-no-fast-forward/mass-merge-no-fast-forward.sh
cd ../test-mass-merge-no-fast-forward
chmod +x mass-merge-no-fast-forward.sh
git init
./mass-merge-no-fast-forward.sh
