#!/usr/bin/env gnuplot -pdc

reset
unset border

set xrange [-4:4]
set yrange [-4:4]
set zrange [-4:4]

set arrow 1 from 0,0,0 to 4,0,0
set arrow 2 from 0,0,0 to 0,4,0
set arrow 3 from 0,0,0 to 0,0,4

set ticslevel -0.5

set xtics axis
set ytics axis
set ztics axis

set isosample 40

set hidden3d

f(x,y)=(x**2+y**2)/6.0 - 3
splot f(x,y)
pause -1
