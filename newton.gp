#!/usr/bin/env gnuplot -pdc

f(x)=x**3+x-5

dx=1e-6
EPS=1e-8
LOOP_LIM=2**10
x0=1.0

set size square
set xrange [0.5:5]
set yrange [-2:2]
set zeroaxis

array X[LOOP_LIM]
X[1] = x0

idx = 1
while (!(abs(f(X[idx])) <= EPS)) {
	df = (f(X[idx]+dx) - f(X[idx]-dx))/(2*dx)
	set title sprintf("loop: %d, x0 = %g, f(x0) = %g", idx, X[idx], f(X[idx]))
	set arrow 1 from first X[idx],f(X[idx])+0.5 to first X[idx],f(X[idx])+0.05 \
	size screen 0.02,15 filled lw 2
	plot f(x), df*(x-X[idx])+f(X[idx])
	pause -1
	X[idx+1] = X[idx] - f(X[idx])/df
	idx = idx + 1
}

set title sprintf("Final result (after %d loops): \nnumerical solution: x = %.10f\n",idx-1,X[idx],f(X[idx]))
set arrow 1 from first X[idx], f(X[idx])+0.5 to first X[idx],f(X[idx])+0.05
plot f(x), df*(x-X[idx])+f(X[idx])

print "numerical solution: x = ",X[idx]
print "exact solution: exp(1) = ", exp(1)
print "error: ", x0 - exp(1)
