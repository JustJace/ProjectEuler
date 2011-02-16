# Problem 14 : Which starting number, under one million, produces the longest chain in the Collatz Problem?

# Collatz-Length (CL)
def CL(n)
	l = 0
	while n != 1
		if(n%2 == 0)
			n /= 2
		else
			n = n*3 + 1
		end

		l += 1
	end

	return l
end

t = 0
n = 0

for i in 1...1000000
	s = CL(i)
	if s > t
		puts s
		t = s
		n = i
	end
end

puts n