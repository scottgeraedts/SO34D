set term postscript color enh 'Helvetica' 24

set output 'heisbulk.eps'

set multiplot

set origin 0.42,0.3
set size 0.55,0.6
set parametric
set ylabel '{/Symbol l}'
set xlabel '{/Symbol b}'
unset xtics
unset ytics
se xr [0:1]
se yr [0:6]
fx1(t)=0.45615
fy1(t)=2*t
fx2(t)=t
fy2(t)=2.7
plot fx1(t),fy1(t) title '' lt -1, \
 fx2(t),fy2(t) title '' lt -1

set origin 0,0
set size 1,1
unset parametric
set log y
set xtics
set ytics
set ylabel offset 2
set xlabel offset 1
se yr [0.04:0.5]
se xr [2.8:5.2]
set key top left
set ylabel '{/Symbol r}'
set xlabel '{/Symbol l}'
pl 'heisbulk6' u (2*$3):11 w lp pt 7 lw 5 ps 2 lt 1 title '{/Symbol r}_J', \
 'heisbulk6' u (2*$3):10 w lp pt 5 lw 5 ps 2 lt 2 lc 3 title ' {/Symbol r}_Q' 

unset multiplot
