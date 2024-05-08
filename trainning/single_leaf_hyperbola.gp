#!/usr/bin/env gnuplot -pdc

set ticslevel 0
f(x,y)=x**2 - y**2
set sample 30
set isosample 50
set view 30,60
set hidden3d #陰線処理
splot f(x,y) linetype 3 dashtype 3 linewidth 3
pause -1
