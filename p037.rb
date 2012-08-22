# Problem 37
#	The number 3797 has an interesting property. Being prime itself,
#	it is possible to continuously remove digits from left to right,
#	and remain prime at each stage: 3797, 797, 97, and 7. Similarly
#	we can work from right to left: 3797, 379, 37, and 3.

#	Find the sum of the only eleven primes that are both truncatable
#	from left to right and right to left.

#	NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

def prime? n
	return false if n < 2
	return true if n == 2 or n == 3
	(2..(n ** 0.5)).each{|x| return false if n % x == 0}
	return true
end

def truncatable n
	
	str = n.to_s
	while str.size > 0
		return false if !prime? str.to_i
		str.slice! 0
	end

	str = n.to_s
	while str.size > 0
		return false if !prime? str.to_i
		str.slice! -1
	end
	printf "New Truncatable: %s\n", n
	return true
end

trunc = []
n = 6


while trunc.size < 11
	nm = n - 1
	np = n + 1
	n += 6
	trunc << nm if prime? nm and nm.to_s.size > 1 and truncatable nm
	trunc << np if prime? np and np.to_s.size > 1 and truncatable np
end

p trunc.inject(:+)


