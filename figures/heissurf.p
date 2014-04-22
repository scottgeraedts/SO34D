set term postscript color enh solid 'Helvetica' 20
set output 'heissurf.eps'
set multiplot

set origin 0,0
set size 1,1

set ylabel 'mL^{3/2}'
set xlabel '{/Symbol l}_{surf}'
set yrange [1:4.5]
set key bottom right
set xtics nomirror
pl 'heissurf6' u (2*$2):($14*6**1.5) w lp title 'L=6' lt 3 lw 2 ps 2 pt 5, \
 'heissurf8' u (2*$2):($14*8**1.5) w lp title 'L=8' lt 8 lw 2 ps 2 pt 7

set origin 0.16,0.5
set size 0.4,0.4
set xrange [0:1]
set yr[0:5]
unset ytics
unset xtics
set label 'SO(3) broken' at first 0.3,first 4
set label 'U(1) broken' at first 0.01,first 1
set xlabel '{/Symbol b}_{surf}'
set ylabel '{/Symbol l}_{surf}'
pl 'heissurfdat' u 1:2 w p pt 5 lt -1 title '', \
 'heissurfdat' u 1:2 w l title '' lt -1

unset multiplot
