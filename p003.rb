# Problem 3 : What is the largest prime factor of 600851475143 

factors = []

n = 600851475143

while n != 1 do
	for p in 2..n do
		if(n%p == 0)
			factors.push(p)
			n /= p
			break
		end
	end
end

print factors.max
