#/usr/bin/env gnuplot -dc -persist

i={0.0,1.0};

set size square;
u0=1
q=100
a=5
absmax=5

if(exist("cntr") == 0) cntr=5
#f(z)=q/(2*pi)*(1/(z+a)+1/(z-a))
g(z,c)=u0+q/(2*pi*(z+c))-q/(2*pi*(z-c));
rvct(z,c)=abs( real(g(z,c)))>absmax?0:real(g(z,c))
ivct(z,c)=abs(-imag(g(z,c)))>absmax?0:-imag(g(z,c))

set sample 50;
set isosample 50;
set urange [-50:50]
set vrange [-50:50]

plot '++' using 1:2:(rvct($1+$2*i,cntr)):(ivct($1+$2*i,cntr)) with vectors

#replot real(5*exp(i*t)+cntr),imag(5*exp(i*t)+cntr) with boxes

#if (abs(cntr)<20); cntr=cntr+i/10; print cntr; reread
pause -1
