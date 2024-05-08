#!/usr/bin/env gnuplot -pdc

set xrange [-4:4]
set yrange [-4:4]
set zrange [0:4]

set parametric

set urange [-pi:pi]
set vrange [-pi:pi]

set ticslevel 0
unset border

set arrow 1 from 0,0,0 to 4,0,0
set arrow 2 from 0,0,0 to 0,4,0
set arrow 3 from 0,0,0 to 0,0,4

set hidden3d
set isosample 30

#splot u,v,2-u
#replot 2*cos(v),2*sin(v),u*4/pi
splot 2*cos(v),2*sin(v),(2-2*cos(v))*u/pi
replot 2*cos(v)*u/pi,2*sin(v)*u/pi,2-2*cos(v)*u/pi

pause -1
