set terminal postscript eps color enhanced size 5,3 font "Times-Roman" 24
set output 'flash-perf.eps'

set xlabel 'Percentile'
set ylabel 'Latency (ms)'
set key center top reverse Left left

set xrange [0.4:1]
set yrange [0:10]

set label 1 'Max Write 28.4ms' at 0.7,8
set label 2 'Max Read 10.33ms' at 0.7,7.3
set arrow 1 from 0.9,7.6 to 0.97,9.9

plot \
 '-' using 2:1 title 'Read' with linespoints ps 2 lw 4, \
 '-' using 2:1 title 'Write' with linespoints ps 2 lw 4, \
 '-' using (0.5):2 title 'Mean Write' with points ps 3, \
 '-' using (0.5):2 title 'Mean Read' with points ps 3

#flash write
   0.041000   0.513330
   0.092000   0.753130
   0.263000   0.900270
   0.514000   0.950010
   1.689000   0.990040
   28.3810    1.0000
e

#flash read
   0.056000   0.500420
   0.148000   0.750300
   0.314000   0.900150
   0.599000   0.950160
   1.388000   0.990030
   10.3290    1.0000
e

ReadData	0.14763
e

WriteData	0.14631
e
