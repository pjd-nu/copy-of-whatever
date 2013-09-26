#
# multiplot thanks to overly complicated example at
# http://www.sciencetronics.com/greenphotons/?p=570
#

set terminal postscript eps color enhanced size 5,5.5 font "Times-Roman" 24
set output 'hit-rate-3.eps'

# the key is to calculate the position in screen coordinates, relative 
# to the entire plot size which was specified (in inches) in the 
# 'set terminal postscript' command.
#
# Here I reserve 0.5in at the bottom for the X tics and label, and make 
# each subplot 5/3 inches high with an 0.1in margin at the top.
#
l = 0.5 / 5
t1 = 5.4 / 5.5
b1 = (0.5 + 10.0/3.0)/5.5
t2 = b1 - 0.1/5.5
b2 = (0.5 + 5.0/3.0)/5.5
t3 = b2 - 0.1/5.5
b3 = 0.5/5.5

set xrange [-0.3:4.3]
set yrange [0:50]
set ytics 15

set multiplot layout 3,1

set lmargin 6
set rmargin 0.5

set tmargin at screen t1
set bmargin at screen b1

unset key
set xtics format ""
set label 1 'Trace 1' at 0, 10

plot \
 '-' title 'Original' with linespoints ps 2 lw 4, \
 '-' title 'Log Cache/LRU' with linespoints ps 2 lw 4

44.58
44.51
44.05
43.37
41.69
e

44.58
44.51
44.02
43.09
41.37
e

set tmargin at screen t2
set bmargin at screen b2

set ylabel 'Hit Rate (percent)' offset 1
set label 1 'Trace 2' at 0, 10

plot \
 '-' title 'Original' with linespoints ps 2 lw 4, \
 '-' title 'Log Cache/LRU' with linespoints ps 2 lw 4

40.919  
40.66 
39.74 
37.88 
35.24 
#32.40 
e

40.92
40.47
39.38
36.87
34.42
e

unset ylabel
set xlabel 'Cache Size'
set tmargin at screen t3
set bmargin at screen b3

set xtics ('{/Symbol \245}' 0, '1GB' 1, '512MB' 2, '256MB' 3, \
    	  '128MB' 4, '64MB' 5)
set label 1 'Trace 3' at 0, 10
set key right 

plot \
 '-' title 'Original' with linespoints ps 2 lw 4, \
 '-' title 'Log Cache/LRU' with linespoints ps 2 lw 4

34.199  
33.62 
32.69 
31.72
28.08
e

34.20
33.62
32.62
31.31
28.59
e

unset multiplot


