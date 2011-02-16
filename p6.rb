# Problem 6 : Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

#(1+..100)^2 - 1^2+..100^2

t = 0

for i in 1..100
	for j in 1..100
		if(i == j)
			next
		end

		t += i * j
	end
end

puts t