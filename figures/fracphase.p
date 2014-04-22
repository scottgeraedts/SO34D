set term postscript enh
set output 'fracphase.eps'
set size 0.6
set xlabel 'K'
set ylabel '{/Symbol l}'

pl 'fracdata' u 1:2 w lp ps 2 title ''
