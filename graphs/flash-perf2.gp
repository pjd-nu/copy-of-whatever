#
# from process2.sh - indexes in data file are:
#     0-2   disk  read  bin1/bin2/bin3
#     3-5   disk  write bin1/bin2/bin3
#     6-8   flash read  bin1/bin2/bin3
#     9-11  flash write bin1/bin2/bin3

set terminal postscript eps color enhanced size 5,3.5 font "Times-Roman" 22
set output 'flash-perf.eps'

set xlabel 'Cumulative fraction'
set ylabel 'Latency (ms)'
set key at 0.65,9.5 Right

set xrange [0.38:1.06]
set yrange [0:10]

set label 1 'Max Write 28.4ms' at 0.7,8
set label 2 'Max Read 10.33ms' at 0.7,7.3
set arrow 1 from 0.9,7.6 to 0.92,9.9

plot 'plot-input.dat' \
        index 11 title 'write - long' with linespoints lt 1ps 2 lw 4, \
     '' index 10 title ' med.' with linespoints lt 1 ps 2 lw 4, \
     '' index 9 title ' short' with linespoints lt 1 ps 2 lw 4, \
     \
     '' index 8 title 'read - long' with linespoints lt 2 ps 2 lw 4, \
     '' index 7 title ' med.' with linespoints lt 2 ps 2 lw 4, \
     '' index 6 title ' short' with linespoints lt 2 ps 2 lw 4

