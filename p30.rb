# Problem 30 : Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

t = 0

for i in 2..1000000
	s = i.to_s.chars.to_a
	p = 0
	for d in s
		p += (d.to_i)**5
	end

	if p == i
		t += i
	end
	
end

puts t