# Problem 35 : How many circular primes are there below one million?

def rot(n)

	s = n.chars.to_a

	f = s[0]
	for i in 0...(s.length-1)
		s[i] = s[i+1]
	end
	s[s.length - 1] = f

	return s.join
end

$primes = [2,3]

def prime? n
	for p in $primes
		if n % p == 0
			return false
		end
	end
	return true
end

def genPrimes()

	puts "Generating primes..."
	for n in (6..1000000).step(6)
		$primes << n+1 if prime? n+1
		$primes << n-1 if prime? n-1
	end

	puts "Finished generating primes"
end

genPrimes()

t = 0
for i in $primes
	c = true
	n = i.to_s
	begin
		n = rot(n)
		if !$primes.include?(n.to_i)
			c = false
			break
		end
	end while n != i.to_s

	if (c)
		puts i
		t += 1
	end
end

puts t