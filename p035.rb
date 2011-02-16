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

$primes = Array.new

def genPrimes()

	$primes.push(2)
	puts "Generating primes..."
	for n in (3..1000000).step(2)
		prime = true
		for p in $primes
			if(n % p == 0)
				prime = false
				break
			end
		end
		if(prime)
			$primes.push(n)
		end
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