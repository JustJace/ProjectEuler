# Problem 34 : Find the sum of all numbers which are equal to the sum of the factorial of their digits.

#(factorial sum)
def FS(n)
	sum = 0
	s = n.to_s.chars.to_a

	for d in s
		if d.to_i == 0
			sum += 1
		else
			sum += (1..(d.to_i)).inject(:*).to_i
		end
	end

	return sum
end


t = 0

for n in 3..10000000
	if (n == FS(n))
		puts n
		t += n
	end
end

puts t