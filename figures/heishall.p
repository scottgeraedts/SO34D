set term postscript color enh solid
set ylabel '{/Symbol s}_{xy}'
set xlabel 'h'
set output 'heishall.eps'
set key bottom right
set size 0.7
set xr [0:2]

pl 'heishall6' u 13:(-($23+$29)/6.**3/2./sin(pi/6.)/2.) w lp title 'L=6 top' lt 1, \
 'heishall8' u 13:(-($23+$31)/8.**3/2./sin(pi/8.)/2.) w lp title 'L=8 top' lt 2, \
 'heishall10' u 13:(-($23+$33)/10.**3/2./sin(pi/10.)/2.) w lp title 'L=10 top' lt 3, \
 'heishall6' u 13:(-($37+$43+$44)/6.**3/2./sin(pi/6.)/2.) w lp title 'L=6 bottom' lt 1, \
 'heishall8' u 13:(-($50+$58+$59)/8.**3/2./sin(pi/8.)/2.) w lp title 'L=8 bottom' lt 2, \
 'heishall10' u 13:(-($77+$67+$78)/10.**3/2./sin(pi/10.)/2.) w lp title 'L=10 bottom' lt 3

