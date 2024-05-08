#!/usr/bin/env gnuplot -dc -persist

set grid
set size square
set size ratio -1

set isosample 50, 50
set urange [-50:50]
set vrange [-50:50]

i={0.0,1.0};

a=3
f(zeta)=zeta + a**2/zeta
plot '++' using 1:2:(real(f($1+$2*i))):(-imag(f($1+$2*i))) with vectors

pause -1
