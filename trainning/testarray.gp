#!/usr/bin/env gnuplot -pdc

reset
stats "array_data_1.dat" nooutput
N=STATS_records
array A[N]

j=1
stats "array_data_1.dat" using (A[j]=$1,j=j+1,0) nooutput

do for [j=1:N] {
	print A[j]
}

