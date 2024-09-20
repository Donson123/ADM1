#!/bin/bash

SF=${1:-1}

echo "SF=$SF"

d=SF-$SF/queries
mkdir -p $d || exit 1
(
cd queries || exit 2
for ((i=1; i<=22; i++))
do
	q=$(printf '../%s/q%02d.sql' $d $i)
	../qgen -v -d -s $SF -b ../dists.dss $i > $q
done
)
ls -alF $d
