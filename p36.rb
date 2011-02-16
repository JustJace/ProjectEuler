# Problem 36 : Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

def pd(n)

	if( (n.to_s == n.to_s.reverse) && (n.to_s(2) == n.to_s(2).reverse))
		return true
	end

	return false
end

t = 0
for i in 1...1000000
	if pd(i)
		t += i
	end
end

puts t