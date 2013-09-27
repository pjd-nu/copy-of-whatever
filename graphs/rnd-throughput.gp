set terminal postscript eps color enhanced size 5,3 font "Times-Roman" 24
set output 'rnd-throughput.eps'

set xlabel 'Operation Size'
set ylabel 'Speed (MB/s)'
set key center top reverse Left left

set xrange [450:4600]
set yrange [0:1]

set logscale x
set xtics ('512B' 512, '1KB' 1024, '2KB' 2048, '4KB' 4*1024) \
	  font "Times-Roman,22"

plot \
'rnd-read.avg' using 1:2 title 'Read' with lines lw 4,\
'rnd-write.avg' using 1:2 title 'Write' with lines lw 4

#set xtics ('256B' 256, '512B' 512, '1KB' 1024, '2KB' 2048, \
#    	  '4KB' 4096, '8KB' 8192, '16KB' 16384, '32KB' 32768, \
#	  '64KB' 64*1024, '128KB' 128*1024, '256KB' 256*1024, \
#	  '512KB' 512*1024, '1MB' 1024*1024, '2MB' 2048*1024, \
#	  '4MB' 4096*1024, '8MB' 8192*1024, '16MB' 16384*1024)
