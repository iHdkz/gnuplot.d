#!/usr/bin/env gnuplot -pdc

set zrange [-4:4]
set urange [-pi:pi]
set vrange [-4:4]

set ticslevel 0

set isosample 50
set hidden3d

set size 0.7, 1

set parametric
splot 2*cos(u),2*sin(u),v
replot 2*cos(u), v, 2*sin(u)
pause -1
