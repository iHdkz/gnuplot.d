#!/usr/bin/env gnuplot -pdc

set urange [0:2*pi]
set vrange [0:2*pi]

set isosample 60

x(u,v)=(3+cos(v))*cos(u)
y(u,v)=(3+cos(v))*sin(u)
z(u,v)=sin(v)

set parametric
set hidden3d

set xrange [-4:8]

splot x(u,v),y(u,v),z(u,v)
replot x(u,v)+3,z(u,v),y(u,v)
pause -1
