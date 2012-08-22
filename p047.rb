# Problem 47

#	The first two consecutive numbers to have two distinct
#	prime factors are:

#	14 = 2 x 7
#	15 = 3 x 5

#	The first three consecutive numbers to have three distinct
#	prime factors are:

#	644 = 2² x 7 x 23
#	645 = 3 x 5 x 43
#	646 = 2 x 17 x 19.

#	Find the first four consecutive integers to have four distinct
#	primes factors. What is the first of these numbers?

require 'Prime'

def f(n)
	x = []
	while n != 1
		for p in Prime.each(n)
			if n % p == 0
				n /= p
				x << p
				break
			end
		end
	end
	return x.uniq.size != 4
end

def solve

	n = 2*3*5*7
	while true
		next if f(n+=1)
		next if f(n+=1)
		next if f(n+=1)
		next if f(n+=1)
		return n - 3
	end
end

p solve
