# Problem 55 : How many Lychrel numbers are there below ten-thousand?


def isP(n)
	return n.to_s == n.to_s.reverse
end

def LC(n)

	r = true

	for i in 1..50
		n = n + n.to_s.reverse.to_i
		if isP(n)
			r = false
			break
		end
	end

	return r
end

t = 0

for n in 1..10000
	t += 1 if LC(n)
end

puts t