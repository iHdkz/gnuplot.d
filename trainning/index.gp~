#!/usr/bin/env gnuplot -pdc

Nh=9
Nv=6
N=Nh*Nv

array aline[Nv]
do for [i=1:N] {
	x=(N-i)%Nh
	y=(N-i)/Nh
	coord=sprintf("(%d,%d)",x,y)
	aline[y+1]=((x == (Nh-1)) ? "" : aline[y+1] . ",") . coord
}
do for [i=Nv:1:-1] {
	print aline[i]
}
