set term postscript solid color enh
set output 'cp1hallimg.eps'
set size 0.5
set ylabel '{/Symbol s}_{xy}'
set xlabel 'Z_2 symmetry breaking'
set ytics 0.2
set key bottom right

pl 'cp1hall6' u ($12-0.2):(2*$12*$34*pi/sin(pi/6.)*1.5) w lp title 'L=6' lt 8 pt 5, \
 'cp1hall8' u ($12-0.2):(2*$12*$34*pi/sin(pi/8.)*1.5) w lp title 'L=8' lt 9 pt 7, \
 'cp1hall10' u ($12-0.2):(2*$12*$34*pi/sin(pi/10.)*1.5) w lp title 'L=10' lt 3 pt 9, \
 1 title ''
