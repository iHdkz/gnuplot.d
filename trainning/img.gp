#!/usr/bin/env gnuplot -pdc

reset
Nh = 900
Nv = 600
array Pr[Nh*Nv]
array Pg[Nh*Nv]
array Pb[Nh*Nv]

k=1
plot "photo.jpg" binary filetype=auto using (Pr[k]=$1,k=k+1)

do for [k=1:1100] {
	print k, Pr[k]
}
