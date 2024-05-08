#!/usr/bin/env gnuplot -pdc

set xrange [-4:4]
set yrange [-4:4]
set zrange [0:40]
set xtics 1
set ytics 1
set xlabel 'x'
set ylabel 'y'
set zlabel 'z'

set ticslevel 0
set isosample 20
set hidden3d
f(x,y)=x**2+y**2

set parametric

splot u,v,f(u,v)
replot 0,u,v*10
pause -1
