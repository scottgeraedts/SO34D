set term epslatex color solid standalone 14
set output 'cp1hall.tex'
#set size 0.5
set ylabel '$\sigma_{xy}^{12}$'
set xlabel '$|\beta_{\uparrow}-\beta_{\downarrow}|$'
set ytics 0.2
set yr[-0.1:]
set key bottom right

pl 'cp1hall6' u ($12-0.2):(2*$12*$34*pi/sin(pi/6.)*1.5) w lp title 'L=6, top surface' lt 3 lw 2 ps 2 pt 5, \
 'cp1hall6' u ($12-0.2):(-2*$12*$37*pi/sin(pi/6.)*1.5) w lp title 'L=6, bottom surface' lt 3 pt 6 lw 2 ps 2, \
 'cp1hall8' u ($12-0.2):(2*$12*$34*pi/sin(pi/8.)*1.5) w lp title 'L=8, top surface' lt 8 pt 7 lw 2 ps 2, \
 'cp1hall8' u ($12-0.2):(-2*$12*$37*pi/sin(pi/8.)*1.5) w lp title 'L=8, bottom surface' lt 8 pt 8 lw 2 ps 2, \
 'cp1hall10' u ($12-0.2):(2*$12*$34*pi/sin(pi/10.)*1.5) w lp title 'L=10, top surface' lt 9 pt 9 lw 2 ps 2, \
 'cp1hall10' u ($12-0.2):(-2*$12*$37*pi/sin(pi/10.)*1.5) w lp title 'L=10, bottom surface' lt 9 pt 10 lw 2 ps 2, \
 1 title ''
