# Problem 21 : Evaluate the sum of all the amicable numbers under 10000.

def d(n)
	t = 0
	for i in 1..((n/2)+1)
		if (n%i == 0)
			t += i
		end
	end

	return t
end


t = 0

for a in 1...10000
	b = d(a)
	if a == d(b) && a != b
		t += a
	end
end

puts t