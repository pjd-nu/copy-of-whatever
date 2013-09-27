#!/bin/sh

# Found data for the plots we have in the INFLOW paper while digging
# in the old SSDs lying around.  In the input file, the position of
# the size argument of WriteData and ReadData is as follows (bold): 

# 752929498655	WriteData	0x7fc0ac6020e0:1:151718:1418:1	1418
# 752932403898	ReadData	0x7fc0acc48c40:0:0:354	354

# 4 read bins - 300 500 32767
# 3 read bins - 500 32767
# 4 write bins - 0 300 1500
# 3 write bins - 0 1100

paste disk-perf.txt flash-perf.txt input-sorted.txt |grep 'Read\|Write' | \
    while read a b c d e f g h; do
    echo $b $e $h
done | awk '{print $1, $2, $3, $NF}' | \
    sed -e s/ReadData/0/ -e s/WriteData/1/ |\
    dbcoldefine disk flash iswrite len |\
    dbcolcreate bin | \
    dbroweval '(_bin = (_len < 100 ? 0 : (_len < 2000 ? 1 : 2)))' > all-data.db
#                                  (_len < 500 ? 0 : _len < 32768 ? 1 : 2))'

#    dbroweval '(_bin = _iswrite ? (_len < 0 ? 0 : _len < 1100 ? 1 : 2) : 
#                                  (_len < 500 ? 0 : _len < 32768 ? 1 : 2))' > all-data.db
#    dbcolcreate -e 0 bin1 -e0 bin2 -e0 bin3 -e0 bin4 |\
#    dbroweval "(_bin1=_len==$b1?1:0)||(_bin2=_len<$b2?1:0)||\
#               (_bin3=_len<$b3?1:0)||(_bin4=1)" > all-data.db

 
