set term postscript enh solid
set output 'cp1surfphase.eps'
set size 0.5
se xr [0:1]
se yr [0:1.5]
se xlabel 'K_{surf}'
se ylabel '{/Symbol b}_{surf}'
set label 'Photon Phase' at first 0.2,0.2
set label 'Higgs Phase' at first 0.4,1
set label 'Molecular Phase' at first 0.05,1.25
pl 'cp1surfdata' u 1:2 w p pt 5 title '', \
 'cp1surfdatasmooth' u 1:2 every :::0::0 w l title '' smooth csplines, \
 'cp1surfdatasmooth' u 1:2 every :::1::1 w l title '' smooth csplines

