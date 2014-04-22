set term postscript solid color enh
set size 0.6
set output 'vortexcor.eps'
set yrange [0:0.022]
set xlabel 'h'
set ylabel 'V_{xy}'

pl 'vortexcor6' u 13:(-$21) w lp pt 5 lt 3 title 'L=6, top surface', \
 'vortexcor6' u 13:(-$22) w lp pt 11 lt 3 title 'L=6,bottom surface', \
 'vortexcor8' u 13:(-$21) w lp pt 7 lt 8 title 'L=8, top surface', \
 'vortexcor8' u 13:(-$22) w lp pt 9 lt 8 title 'L=8, bottom surface'


