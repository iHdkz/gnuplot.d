#!/usr/bin/env gnuplot -pdc

x(u,v)=cos(2*u)*(v*cos(u)+2)
y(u,v)=sin(2*u)*(v*cos(u)+2)
z(u,v)=v*sin(u)

set urange [0:pi]
set vrange [-1:1]
set xrange [-4:4]

set parametric

set isosample 50

set hidden3d

splot x(u,v),y(u,v),z(u,v)
pause -1
