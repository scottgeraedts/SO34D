set term epslatex color solid standalone 11
set output 'vortexcor.tex'
set yrange [0:0.022]
set xlabel '$h_{\mathrm surface}$'
set ylabel ' $\langle V_{xy}  J_t\rangle$' 3,0

pl 'vortexcor6' u 13:(-$21) w lp pt 5 lt 3 lw 2 ps 2 title 'L=6, top surface', \
 'vortexcor6' u 13:(-$22) w lp pt 11 lt 3 lw 2 ps 2 title 'L=6,bottom surface', \
 'vortexcor8' u 13:(-$21) w lp pt 7 lt 8 lw 2 ps 2 title 'L=8, top surface', \
 'vortexcor8' u 13:(-$22) w lp pt 9 lt 8 lw 2 ps 2 title 'L=8, bottom surface'


