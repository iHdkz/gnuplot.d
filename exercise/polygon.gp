#
# Polygons as individual objects first,
# then "splot with polygons"
#
# The vertices of an icosahedron are circular permutations of (0, ±1, ±ϕ)
# where    ϕ = (1 + √5) / 2    is the golden ratio.

phi = (1.0 + sqrt(5.)) / 2.

array v1  = [   0.,   1.,  phi]
array v2  = [   0.,   1., -phi]
array v3  = [   0.,  -1.,  phi]
array v4  = [   0.,  -1., -phi]
array v5  = [   1.,  phi,   0.]
array v6  = [   1., -phi,   0.]
array v7  = [  -1.,  phi,   0.]
array v8  = [  -1., -phi,   0.]
array v9  = [  phi,   0.,   1.]
array v10 = [ -phi,   0.,   1.]
array v11 = [  phi,   0.,  -1.]
array v12 = [ -phi,   0.,  -1.]

# define one point per vertex
do for [i=1:12] {
	cmd=sprintf("set label %d 'v%d' at v%d[1], v%d[2], v%d[3]", i,i,i,i,i )
	print(cmd)
	eval(cmd)
}

seq1 = "v5 v7 v10 v3 v9 v5"
n = 1
do for [i=1:5] {
	vert1 = word(seq1,i)
	vert2 = word(seq1,i+1)
	cmd=sprintf("set obj %d polygon from v1[1], v1[2], v1[3] to %s[1],%s[2],%s[3] to %s[1],%s[2],%s[3] to v1[1], v1[2], v1[3]", n, vert1, vert1, vert1, vert2, vert2, vert2)
	print(cmd)
	eval(cmd)
	n = n+1
}

seq2 = "v5 v11 v4 v12 v7 v5"
do for [i=1:5] {
	vert1 = word(seq2,i)
	vert2 = word(seq2,i+1)
	cmd=sprintf("set obj %d polygon from v2[1], v2[2], v2[3] to %s[1],%s[2],%s[3] to %s[1],%s[2],%s[3] to v2[1], v2[2], v2[3]", n, vert1, vert1, vert1, vert2, vert2, vert2)
	print(cmd)
	eval(cmd)
	n = n+1
}

seq3 = "v3 v10 v12 v4 v6 v3"
do for [i=1:5] {
	vert1 = word(seq3,i)
	vert2 = word(seq3,i+1)
	cmd=sprintf("set obj %d polygon from v8[1], v8[2], v8[3] to %s[1],%s[2],%s[3] to %s[1],%s[2],%s[3] to v8[1], v8[2], v8[3]", n, vert1, vert1, vert1, vert2, vert2, vert2)
	print(cmd)
	eval(cmd)
	n = n+1
}
cmd=sprintf("set obj %d polygon from v7[1], v7[2], v7[3] to v12[1],v12[2],v12[3] to v10[1],v10[2],v10[3] to v7[1], v7[2], v7[3]", n)
print(cmd)
eval(cmd)
n = n+1
eval( sprintf("set obj %d polygon from v6[1], v6[2], v6[3] to v4[1],v4[2],v4[3] to v11[1],v11[2],v11[3] to v6[1], v6[2], v6[3]", n) )
n = n+1
eval( sprintf("set obj %d polygon from v5[1], v5[2], v5[3] to v9[1],v9[2],v9[3] to v11[1],v11[2],v11[3] to v5[1], v5[2], v5[3]", n) )
n = n+1
eval( sprintf("set obj %d polygon from v9[1], v9[2], v9[3] to v6[1],v6[2],v6[3] to v11[1],v11[2],v11[3] to v9[1], v9[2], v9[3]", n) )
n = n+1
eval( sprintf("set obj %d polygon from v9[1], v9[2], v9[3] to v3[1],v3[2],v3[3] to v6[1],v6[2],v6[3] to v9[1], v9[2], v9[3]", n) )
n = n+1

set for [o=1:n] obj o polygon fs transparent solid 0.8 fc "gray75"
set pm3d depthorder border lc "black" lw 2

set xrange [-2:2]; set yrange [-2:2]; set zrange [-2:2]
set view equal xyz
set view 30,30,1.5
unset border
unset tics
unset key
unset label
undefine v*
undefine seq*

set title "Faces of an icosahedron drawn as 20 individual objects"
splot -10
pause -1
