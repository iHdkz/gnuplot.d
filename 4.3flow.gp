#!/usr/bin/env gnuplot -dc -persist

set size square
set grid
set parametric
set sample 50
set isosample 50
set urange [-50:50]
set vrange [-50:50]

q=100*(1+i);
w=2
a=3
g(z)=w-(a**2)*q/(2*pi*(z-cntr)**2)

vfilter(val,bound)=abs(val)>bound ? 0 : val;
rvct(z)=vfilter( real(g(z)), 10);
ivct(z)=vfilter(-imag(g(z)), 10);

if(exist("cntr") == 0) cntr=10;
cntr=cntr-0.05;

plot '++' using 1:2:(rvct($1+$2*i)):(ivct($1+$2*i)) with vectors

if(abs(cntr) > 20) exit;
reread

pause -1

