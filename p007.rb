# Problem 7 : Find the 10001st prime

def prime(n, primes)
	for i in primes do
		if(n%i == 0)
			return false
		end
	end

	return true
end

primes = [2]
i = 3

while primes.length != 10001 do

	if(prime(i, primes))
		primes.push(i)
	end

	i += 1
end

puts primes.max