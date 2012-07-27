# Problem 39

# If p is the perimeter of a right angle triangle with integral 
# length sides, {a,b,c}, there are exactly three solutions for p = 120.

# {20,48,52}, {24,45,51}, {30,40,50}

# For which value of p  1000, is the number of solutions maximised?

best = 0
bestp = 0

for p in 0..1000
	psolutions = 0
	for a in 0...p
		for b in 0...p
			next if a + b > p
			if (a*a + b*b)**(0.5) == p - a - b
				psolutions += 1
			end
		end
	end
	if psolutions > best
		best = psolutions
		bestp = p
		puts bestp
	end
end

puts bestp
