# Problem 28 : What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

t = 1
x = 1

for i in 1..500
	for j in 1..4
		x += (2*i)
		t += x
	end
end

puts t