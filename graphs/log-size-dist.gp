
set terminal postscript eps color enhanced size 5,3 font "Times-Roman" 24
set output 'log-size-dist.eps'

set logscale x
set xrange [10:5e6]

set	xlabel  "Object Size (Bytes)"
set	ylabel "Fraction of Objects" offset 1

plot \
'me-log.dat' title 'Trace 1' with linespoints, \
'sev-log.dat' title 'Trace 2' with linespoints, \
'pjd-log.dat' title 'Trace 3' with linespoints
