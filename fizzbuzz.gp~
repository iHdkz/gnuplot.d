#!/usr/bin/env gnuplot -persist -dc

do for [it=1:100] {
	print (it%15 == 0) ? "FizzBuzz" : \
	      (it% 3 == 0) ? "Fizz" : \
	      (it% 5 == 0) ? "Buzz" : it
}
