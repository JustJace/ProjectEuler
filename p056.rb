# Problem 56 : Considering natural numbers of the form, a^b, where a, b <= 100, what is the maximum digital sum?

max = 0

for a in 1...100
	for b in 1...100
		t = 0
		for d in (a**b).to_s.chars.to_a
			t += d.to_i
		end

		max = t if t > max
	end
end

puts max