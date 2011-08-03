# Problem 97 : However, in 2004 there was found a massive non-Mersenne prime which contains 2,357,207 digits: 28433x2^7830457+1.
# Find the last ten digits of this prime number.

p = 1
for i in 1..7830457
	p *= 2	
	p %= 10000000000
end

p *= 28433
p += 1

puts p.to_s[-10..-1]