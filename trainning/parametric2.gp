#!/user/bin/env gnuplot -pdc

reset
set xrange [-3:7]
set parametric
set size ratio -1

plot cos(t),sin(t)
f(t)=1+cos(t)
replot f(t)*cos(t), f(t)*sin(t)
replot t,sin(t)
pause -1
