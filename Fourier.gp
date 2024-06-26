#!/usr/bin/env gnuplot -pdc

reset

i={0.0,1.0}

N=2**10
array F[N]
step(x)=(-1)**int(floor(3*x/pi))
fun(x)=cos(x)

do for [j=1:N] { F[j] = fun(2*pi*j/N) }

array A[N]
do for [k=1:N] { A[k] = sum [j=1:N] F[j] * exp(-2*pi*(j-1)*(k-1)*i/N) }

array newF[N]
do for [j=1:N] { newF[j] = sum [k=1:N] A[k] * exp(2*pi*(j-1)*(k-1)*i/N) }

set xtics 100
set zeroaxis
plot A using 1:2 with lines ls 4
replot A using 1:3 with lines

pause -1
