# Problem 50
#	The prime 41, can be written as the sum of six consecutive primes:
#	41 = 2 + 3 + 5 + 7 + 11 + 13

#	This is the longest sum of consecutive primes that adds to a 
#	prime below one-hundred.

#	The longest sum of consecutive primes below one-thousand that
#	adds to a prime, contains 21 terms, and is equal to 953.

#	Which prime, below one-million, can be written as the sum of
#	the most consecutive primes?

def prime? n
	return false if n < 2
	return true if n == 2 || n == 3
	(2..(n ** 0.5)).each{|x| return false if n % x == 0}
	return true
end

primes = [2,3]
n = 0
while primes.length < 4000
	n += 6
	primes << n - 1 if prime? n - 1	
	primes << n + 1 if prime? n + 1
end

highprime = 0
highcount = 0

for alpha in 0...primes.length
	for beta in alpha...primes.length
		next if beta - alpha < highcount
		sum = primes[alpha..beta].inject(:+)
		next if sum > 10 ** 6
		next if !prime? sum
		
		printf "[%s, %s] = %s\n", primes[alpha], primes[beta], sum
		highcount = beta - alpha
		highprime = sum
	end
end

p highprime
