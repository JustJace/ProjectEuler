# Problem 12 : What is the value of the first triangle number to have over five hundred divisors?

def factors(n)
	f = 0
	lim = n
	for i in 1...(lim) do
		if(n%i == 0)
			lim = n/i
			f += 1
		end
	end
	
	return 2 * f
end

tri = 0
n = 1
max = 0

while true do
	tri += n
	n += 1
	f = factors(tri)
	if f > max
		max = f
		puts max
	end
	if(f > 500)
		break
	end
end

puts tri