#!/usr/bin/env gnuplot -pdc

g(x,y)=x**2+y**2
set sample 30
set isosample 100
set hidden3d

set contour both
set cntrparam levels 50

set pm3d at b
#set view map

set ticslevel 0
set zrange [0:40]
splot g(x,y) with pm3d
pause -1
