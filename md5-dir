#!/bin/bash

# recursively performs an md5 sum on files in a directory and md5's the aggregate.
# useful to help you determine if the the contents of two directories are exactly the same.

if [ $# -ne 1 ]
then
	echo "usage: `basename $0` <path>"
	exit 1
fi

find $1 -type f -exec md5 {} + | awk '{print $1}' | sort | md5
