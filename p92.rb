# Problem 92 : A number chain is created by continuously adding the square of the digits in a number to form a new number until it has been seen before.
# How many starting numbers below ten million will arrive at 89?


def SD(n)
	t = 0
	for d in n.to_s.chars.to_a
		t += d.to_i**2
	end
	return t
end

hash = Array.new

t = 0
for i in 1...10000000
	chain = Array.new
	n = i
	while true
		chain.push n

		if hash[n] == 89 || n == 89
			for link in chain
				hash[link] = 89
			end
			t += 1
			break
		elsif hash[n] == 1 || n == 1
			for link in chain
				hash[link] = 1
			end
			break
		end
		n = SD(n)
	end
end

puts t