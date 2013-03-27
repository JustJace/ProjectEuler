# Problem 49

# The arithmetic sequence, 1487, 4817, 8147, in which each of the terms
# increases by 3330, is unusual in two ways: (i) each of the three terms
# are prime, and, (ii) each of the 4-digit numbers are permutations of
# one another.

# There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes, 
# exhibiting this property, but there is one other 4-digit increasing sequence.

# What 12-digit number do you form by concatenating the three terms in
# this sequence?

load 'PrimeGenerator.rb'

primes = PrimeGenerator.generateUpTo 10000

primes.select {|p| p > 1000}.combination(3).each {|c|

	c.sort!

	next if c[1]-c[0] != c[2] - c[1]

	next if c[0].to_s.chars.to_a.sort != c[1].to_s.chars.to_a.sort

	next if c[1].to_s.chars.to_a.sort != c[2].to_s.chars.to_a.sort

	puts c.join

}

