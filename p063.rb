# Problem 63 : How many n-digit positive integers exist which are also an nth power?

t = 0

for b in 1...10
	for p in 1..22
		t += 1 if p == (b**p).to_s.length
	end
end

puts t
