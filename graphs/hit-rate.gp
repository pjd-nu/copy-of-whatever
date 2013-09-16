set terminal postscript eps color enhanced size 5,3 font "Times-Roman" 24
set output 'hit-rate.eps'

set xtics ('{/Symbol \245}' 0, '1GB' 1, '512MB' 2, '256MB' 3, '128MB' 4)
set xrange [-0.3:4.3]
set yrange [0:50]
set ylabel 'Hit Rate (percent)'
set xlabel 'Cache Size'

set key left bottom

plot \
 '-' title 'Trace 1' with linespoints ps 3, \
 '-' title 'Trace 2' with linespoints ps 3, \
 '-' title 'Trace 3' with linespoints ps 3

44.58
44.304
43.147
41.27
39.147 
e

40.919 
39.99 
38.045 
35.063 
32.01 
e

34.199 
32.931 
30.346 
26.244 
23.077 
e
