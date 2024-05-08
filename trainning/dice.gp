#!/usr/bin/env gnuplot -pdc

reset
set nokey
set view equal xyz

set ticslevel 0

set noborder

set xtics axis
set ytics axis
set ztics axis

set arrow 1 from 0,0,0 to 2,0,0
set arrow 2 from 0,0,0 to 0,2,0
set arrow 3 from 0,0,0 to 0,0,2

splot "dice.txt" with lines linetype 7 linewidth 3
pause -1
