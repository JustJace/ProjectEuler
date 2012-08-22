# Problem 53

# 	There are exactly ten ways of selecting three from five, 12345:

# 	123, 124, 125, 134, 135, 145, 234, 235, 245, and 345

#	In combinatorics, we use the notation, 5C3 = 10.

#	In general,

#	nCr = n!/r!(nr)!
#	where r  n, n! = n(n1)...321, and 0! = 1.

#	It is not until n = 23, that a value exceeds one-million:
#	23C10 = 1144066.

# 	How many, not necessarily distinct, values of  nCr,
#	for 1 <= n <= 100, are greater than one-million?

class Fixnum
	def !
		return self == 0 ? 1 : (1..self).inject(:*)
	end
end

def nCr n, r
	!n / !r * !(n * r)
end

count = 0
for n in 1..100
	for r in 1..n
		count += 1 if nCr(n, r) > 10**6
	end
end

p count
