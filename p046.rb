# Problem 46

#	It was proposed by Christian Goldbach that every odd composite 
# 	number can be written as the sum of a prime and twice a square.

#	9 = 7 + 212
#	15 = 7 + 222
#	21 = 3 + 232
#	25 = 7 + 232
#	27 = 19 + 222
#	33 = 31 + 212

#	It turns out that the conjecture was false.

#	What is the smallest odd composite that cannot be written
#	as the sum of a prime and twice a square?

def prime? n
	return false if n < 2
	return true if n == 2 || n == 3
	(2..(n ** 0.5)).each{|x| return false if n % x == 0}
	return true
end

def primes n
	primes = [2,3]
	i = 6
	while i < n
		primes << i-1 if prime? i-1
		primes << i+1 if prime? i+1
		i += 6
	end
	return primes
end

x = 9

while x+=2
	next if prime? x
	works = false
	primes(x).each{|p|
		rem = ((x-p).to_f / 2.0) ** 0.5
		if rem == rem.floor
			works = true
			break
		end
	}
	break if !works
end

p x



