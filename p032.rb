# Problem 32

# We shall say that an n-digit number is pandigital if it makes
# use of all the digits 1 to n exactly once; for example, the
# 5-digit number, 15234, is 1 through 5 pandigital.

# The product 7254 is unusual, as the identity, 39  186 = 7254, 
# containing multiplicand, multiplier, and product is 1 through 9 pandigital.

# Find the sum of all products whose multiplicand/multiplier/product
# identity can be written as a 1 through 9 pandigital.

# HINT: Some products can be obtained in more than one 
# way so be sure to only include it once in your sum.


require 'set'

class Array
	def sum
		inject(:+)
	end
end

products = []

permutations = "123456789".split('').permutation
for p in permutations
	for alpha in 0...p.length
		for beta in (alpha+1)...p.length
			cand = p[0...alpha].join.to_i
			lier = p[alpha...beta].join.to_i
			prod = p[beta..-1].join.to_i
			if cand * lier == prod
				if !products.include? prod
					products << prod
					puts cand.to_s + " x " + lier.to_s + " = " + prod.to_s
				end
			end
		end
	end
end


puts products.sum
