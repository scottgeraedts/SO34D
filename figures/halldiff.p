set term postscript color enh
set size 0.6
set xlabel '|{/Symbol b}_1-{/Symbol b}_2|'
set ylabel '{/Symbol s}_{xy}'
set xrange [0:6]
set yrange [-0.04:0.6]
set key bottom right

set output 'halldiff.eps'
pl  'hall2/L6' u 12:(($34-$37)*$12*pi/sin(pi/6.)*1.5) w lp title 'd=2,L=6' lt 1 lc 1, \
 'hall2/L8' u 12:(($34-$37)*$12*pi/sin(pi/8.)*1.5) w lp title 'd=2,L=8' pt 11 lt 1 lc 1, \
 'hall3/L6' u 12:(($34-$37)*$12*pi/sin(pi/6.)*1.5) w lp title 'd=3,L=6' pt 5 lt 1 lc 2, \
 'hall3/L8' u 12:(($34-$37)*$12*pi/sin(pi/8.)*1.5) w lp title 'd=3,L=8' pt 7 lt 1 lc 2, \
 1/3. title '' lt 5 lc 9, \
 1/2. title ''lt 5 lc 9


