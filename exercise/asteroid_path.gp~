#!/usr/bin/env gnuplot -pdc

reset
r(a,epsilon,t)=a*(1-epsilon**2)/(1+epsilon*cos(t))

set size square
set parametric

array planet[8] = ["Mercury","Venus","Earth","Mars","Jupiter","Saturn","Uranus","Neptune"]
array smaxis[8] = [0.3871,0.7233,1.0,1.5237,5.2026,9.5549,19.2184,30.1104]
array eccentricity[8] = [0.2056,0.0068,0.0167,0.0934,0.0485,0.0555,0.0463,0.0090]

# Mercury
plot r(smaxis[1],eccentricity[1],t)*cos(t),r(smaxis[1],eccentricity[1],t)*sin(t) with line title planet[1]
# Venus
replot r(smaxis[2],eccentricity[2],t)*cos(t),r(smaxis[2],eccentricity[2],t)*sin(t) with line title planet[2]
# Earth
replot r(smaxis[3],eccentricity[3],t)*cos(t),r(smaxis[3],eccentricity[3],t)*sin(t) with line title planet[3]
# Mars
replot r(smaxis[4],eccentricity[4],t)*cos(t),r(smaxis[4],eccentricity[4],t)*sin(t) with line title planet[4]
# Jupiter
replot r(smaxis[5],eccentricity[5],t)*cos(t),r(smaxis[5],eccentricity[5],t)*sin(t) with line title planet[5]
# Saturn
replot r(smaxis[6],eccentricity[6],t)*cos(t),r(smaxis[6],eccentricity[6],t)*sin(t) with line title planet[6]
# Uranus
replot r(smaxis[7],eccentricity[7],t)*cos(t),r(smaxis[7],eccentricity[7],t)*sin(t) with line title planet[7]
# Neptune
replot r(smaxis[8],eccentricity[8],t)*cos(t),r(smaxis[8],eccentricity[8],t)*sin(t) with line title planet[8]
pause -1
