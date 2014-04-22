set term postscript enh solid 'Helvetica' 12
set output 'cp1bulkphase.eps'

set multiplot

set origin 0,0.47
set size 0.5,0.48

set xrange [0:1]
set xlabel 'K'
set ytics 0.2,0.2,1
se yrange[0:1]
se ylabel '{/Symbol b}'

set object rect from first 0.25,0.9 to first 0.45,1 lw 2
set label 'Coulomb Phase' at first 0.65,0.28
set label 'of Spins' at first 0.65,0.21
set label 'Ordered Phase of Spins' at first 0.4,0.75
pl 'cp1bulkdata' u 2:1 w p pt 5 title '', \
 'cp1bulkdatasmooth' u 2:1 every :::0::0 w l smooth csplines title '', \
 'cp1bulkdatasmooth' u 2:1 every :::1::1 w l smooth bezier title ''

set origin 0,0
set size 0.5,0.47

set label '{/Symbol l} small' at first 0.26,2.27
set label '{/Symbol l} large' at first 0.26,0.94

se xlabel 'K'
set xtics
set label 'Paramagnet of Spins' at first 0.05,1.6
set label 'Superfluid of Bosons' at first 0.05,1.51
set label 'Binding Phase' at first 0.1,0.21
#set label 'Coulomb' at first 0.65,0.19
#set label 'Phase+' at first 0.65,0.1
set label 'Insulator of Bosons' at first 0.62,0.09
set label 'Superfluid' at first 0.65,1.42
set label 'of Bosons' at first 0.65,1.35
#set label 'Magnetically Ordered' at first 0.45,0.75
#set label 'Phase+' at first 0.65,0.66
set label 'Superfluid of Bosons' at first 0.5,1.97
set label 'Insulator of Bosons' at first 0.5,0.65
pl 'cp1bulkdata' u 2:1 w p pt 5 title '', \
 'cp1bulkdatasmooth' u 2:1 every :::0::0 w l smooth csplines title '', \
 'cp1bulkdatasmooth' u 2:1 every :::1::1 w l smooth bezier title ''

unset multiplot
