# Problem 4 : Find the largest palindrome made from the product of two 3-digit numbers

def isPal? p
	return p.to_s == p.to_s.reverse
end

pal = 0
for i in 999.downto 100
	for j in 999.downto 100
		num = i*j
		pal = num if isPal?(num) && num > pal
	end
end

puts pal
