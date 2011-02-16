# Problem 4 : Find the largest palindrome made from the product of two 3-digit numbers

def isPal(p)
	s = p.to_s
	r = s.reverse

	if(s == r)
		return true;
	else
		return false;
	end
end

pal = 0
for i in 999.downto(100) do
	for j in 999.downto(100) do
		p = i*j
		if (isPal(p))
			if p > pal
				pal = p
			end
		end
	end
end

puts pal