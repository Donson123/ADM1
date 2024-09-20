#!/bin/bash

SF=${1:-1}

echo "SF=$SF"

d=SF-$SF/data
mkdir -p $d || exit 1
(
cd $d || exit 2
../../dbgen -v -s $SF -b ../../dists.dss
)
ls -alF $d
