#
#

set terminal postscript eps color enhanced size 5,3.5 font "Times-Roman" 22
set output 'hit-rate.eps'

set xlabel 'Cache size (MB)'
set ylabel 'Hit rate (percent)' offset 1.5

set boxwidth 0.2 relative
set xrange [1400:90]
set yrange [10:50]
set logscale x
set xtics (1024,512,256,128)

dx1 = 0.85
dx2 = 0.94

set boxwidth 0.08 relative
plot 'hit-rate.dat' \
        index 0 using ($2/dx1):3 title 'Chromium cache' \
	   with boxes ls 1 fs pattern 1, \
     '' index 0 using ($2*dx2/dx1):4 title 'Log cache' \
     	   with boxes ls 2 fs pattern 2, \
     \
     '' index 1 using ($2):3 notitle with boxes ls 1 fs pattern 1, \
     '' index 1 using ($2*dx2):4 notitle with boxes ls 2 fs pattern 2, \
     \
     '' index 2 using ($2*dx1):3 notitle with boxes ls 1 fs pattern 1, \
     '' index 2 using ($2*dx1*dx2):4 notitle with boxes ls 2 fs pattern 2
