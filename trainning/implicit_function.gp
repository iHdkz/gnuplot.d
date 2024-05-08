#!/usr/bin/env gnuplot -pdc

set xrange [-4:4]
set yrange [-4:4]
set zrange [-4:4]

set xtics 1
set ytics 1

set xlabel 'x'
set ylabel 'y'
set zlabel 'z'

set ticslevel 0
set isosample 100
set hidden3d

f(x,y)=(x**2+y**2)**2 - 2*(x**2-y**2)

set parametric

set contour
set cntrparam levels 1
set nosurface
set view map

unset zlabel
set nokey

set zeroaxis
set grid

set size 0.8,1

splot u,v,f(u,v)
#replot u,v,0
pause -1
