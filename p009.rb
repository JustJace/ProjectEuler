# Problem 9 : There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.

for a in 1..500 do
	for b in a..500 do
		c = Math.sqrt(a*a + b*b)
		if(c - c.floor != 0)
			next
		else
			if( (a+b+c) == 1000)
				puts a*b*c
			end
		end
	end
end
