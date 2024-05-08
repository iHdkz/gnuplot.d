#!/usr/bin/env gnuplot -pdc

reset
set parametric

set nokey

set xrange [-4:4]
set yrange [-4:4]
set zrange [-4:4]

set isosample 40
set ticslevel 0

f(x,y)=(x**2+y**2)/6.0-3

#splot u,v,f(u,v) linetype 3
splot -4,v,f(-4,v)	linetype 8
replot 0,v,f(0,v)	linetype 8
replot 4,v,f(4,v)	linetype 8
replot u,-4,f(u,-4)	linetype 8
replot u,0,f(u,0)	linetype 8
replot u,4,f(u,4)	linetype 8
replot cos(4*u), sin(4*u), u linetype 9

pause -1
