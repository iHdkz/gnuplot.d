#!/usr/bin/env gnuplot -pdc

reset

set zeroaxis
#set xtics 1
#set ytics 1
set grid
set size square

set key outside #bottom left right top outside inside

f(x)=x**2 - 2*x
plot f(x) dashtype 4 linewidth 3
pause -1
