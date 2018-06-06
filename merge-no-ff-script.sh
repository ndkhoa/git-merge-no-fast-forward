#!/usr/bin/env bash

rm -rf ../test-merge-no-fast-forward
mkdir ../test-merge-no-fast-forward
cp merge-no-fast-forward.sh ../test-merge-no-fast-forward/merge-no-fast-forward.sh
cd ../test-merge-no-fast-forward
chmod +x merge-no-fast-forward.sh
git init
./merge-no-fast-forward.sh
