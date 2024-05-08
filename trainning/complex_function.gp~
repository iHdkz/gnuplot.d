#!/usr/bin/env gnuplot -pdc

reset

set xrange [-pi:pi]
set yrange [-pi:pi]
set zrange [-10:10]
set isosamples 50,50
set ticslevel 0

set hidden3d

f(x,y)=1/(x+y*{0,1})

splot real(f(x,y)) linetype 9 linewidth 3
pause -1
