# Problem 10 : Find the sum of all the primes below two million.
## Runs really slowly, though

def prime(n, primes)
	for i in primes do
		if(n%i == 0)
			return false
		end
	end

	return true
end

primes = [2]
t = 2

for i in 3...2000000 do
	if(prime(i, primes))
		primes.push(i)
		t += i
	end
end

puts t