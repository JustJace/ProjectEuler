# Problem 1 : Sum of integers that are multiples of 3 and 5 under 1000

t = 0

for n in 0...1000 do
	if ( (n%3 == 0) || (n%5 == 0) )
		t += n
	end
end

print t