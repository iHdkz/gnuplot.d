#!/usr/bin/env gnuplot -pdc

reset
set polar

set xrange [-2:2]
set yrange [-1.2:1.2]

set grid
set size ratio -1

plot sin(3*t)
replot 1

pause -1
