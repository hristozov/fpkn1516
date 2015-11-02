#!/bin/bash

set -e

cd $(dirname $0)

for d in */ ; do
    cd $d && ./run.sh && cd ..
done
