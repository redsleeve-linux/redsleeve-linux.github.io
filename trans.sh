#!/bin/bash

for f in `grep -R "Supported by" * | sed -e 's/:.*//'`; do
	cat $f | sed -e 's/Supported by/Supported by/' > $f.new
	mv $f.new $f
done
