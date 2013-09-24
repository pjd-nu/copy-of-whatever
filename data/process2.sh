#!/bin/sh

# disk first
# write
for type in disk flash; do
    for iswr in 0 1; do
	for bin in 0 1 2; do
	    echo \#$type write=$iswr $b
	    dbrow "_iswrite==$iswr&&_bin==$bin" < all-data.db | \
		dbcolstats -q 10 $type | grep -v '#' | \
		while read a b c d e f g h i j k l m; do
		    for q in $m $k; do
			echo $q
		    done
	        done | cat -n
	    echo; echo;
	done
    done
done

