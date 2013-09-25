#
# from process2.sh - indexes in data file are:
#     0-2   disk  read  bin1/bin2/bin3
#     3-5   disk  write bin1/bin2/bin3
#     6-8   flash read  bin1/bin2/bin3
#     9-11  flash write bin1/bin2/bin3

set terminal postscript eps enhanced size 5,3 font "Times-Roman" 22
set output 'disk-perf.eps'

set xlabel 'Percentile'
set ylabel 'Latency (ms)'
set key at 1.09,4.5 Right

set xrange [0.4:1.08]
set yrange [0:10]

set label 1 'Max Write 470ms' at 0.8,9 right
set label 2 'Max Read 3351ms' at 0.8,8.2 right
set arrow 1 from 0.81,9.0 to 0.86,9.9

plot 'plot-input.dat' \
        index 5 title 'write - long' with linespoints lt 1 lw 4 ps 2, \
     '' index 4 title '- med.' with linespoints lt 1 lw 4 ps 2, \
     '' index 3 title '- short' with linespoints lt 1 lw 4 ps 2, \
     \
     '' index 2 title 'read - long' with linespoints lt 2 lw 4 ps 2, \
     '' index 1 title ' - med.' with linespoints lt 2 lw 4 ps 2, \
     '' index 0 title ' - short' with linespoints lt 2 lw 4 ps 2

