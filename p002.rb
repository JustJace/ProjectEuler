# Problem 2 : Sum of fibonacci numbers under 4M that are even

total = 0

a = 1
b = 1
c = 0

while c < 4000000 do
	c = a + b
	a = b
	b = c
	if (c % 2 == 0)
		total += c
	end
	
end

print total
