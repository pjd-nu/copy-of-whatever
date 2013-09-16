set terminal postscript eps color enhanced size 5,3 font "Times-Roman" 24
set output 'disk-perf.eps'

set xlabel 'Percentile'
set ylabel 'Latency (ms)'
set key center top reverse Left left

set xrange [0.4:1]
set yrange [0:10]

set label 1 'Max Write 470ms' at 0.9,9 right
set label 2 'Max Read 3351ms' at 0.9,8.3 right
set arrow 1 from 0.9,9.2 to 0.92,9.9

plot \
 '-' using 2:1 title 'Read' with linespoints ps 2 lw 4, \
 '-' using 2:1 title 'Write' with linespoints ps 2 lw 4, \
 '-' using (0.5):2 title 'Mean Write' with points ps 3, \
 '-' using (0.5):2 title 'Mean Read' with points ps 3


#disk read:
   0.74400    0.50046
   3.81500    0.75006
   6.62900    0.90002
   8.65100    0.95001
  17.08600    0.99004
3351.7700     1.0000
e

#disk write:
  0.94800    0.50008
  6.33000    0.75013
  6.87300    0.90015
  7.83200    0.95033
 13.95400    0.99003
469.6190     1.0000
e

ReadData	3.0471
e

WriteData	3.5907
e
