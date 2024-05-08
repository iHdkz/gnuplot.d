#!/usr/bin/env gnuplot -pdc

reset

Nh=900
Nv=600

array Pr[Nh*Nv]
array Pg[Nh*Nv]
array Pb[Nh*Nv]

set term unknown
i=1
plot "photo.jpg" binary filetype=auto using (Pr[i]=$1,Pg[i]=$2,Pb[i]=$3,i=i+1,0)


set term pop
set size ratio -1

plot Pr using (int(Nh*Nv-$1)%Nh):(int(Nh*Nv-$1)/Nh):(Pr[$1]):(Pg[$1]):(Pb[$1]) with rgbimage

pause -1
