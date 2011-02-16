# Problem 25 : What is the first term in the Fibonacci sequence to contain 1000 digits?

a = 1
b = 1
c = 0
i = 2

while true
	i += 1
	c = a + b
	if (c.to_s.length >= 1000)
		break
	end

	a = b
	b = c
end

puts i