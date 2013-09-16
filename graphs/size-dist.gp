
set terminal postscript eps color enhanced size 5,3 font "Times-Roman" 24
set output 'size-dist.eps'

set style fill solid
set xrange [-0.05:4.55]

set	xlabel  "Object Size (KB)"
set	ylabel "Fraction of Objects" offset 1

plot \
'me.dat' using (($1+40000)/1e6):2 title 'Trace 1' with boxes, \
'sev.dat' using (($1+20000)/1e6):2 title 'Trace 2' with boxes, \
'pjd.dat' using ($1/1e6):2 title 'Trace 3' with boxes
