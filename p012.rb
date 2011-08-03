# Problem 12 : What is the value of the first triangle number to have over five hundred divisors?

def divisors(n)
	f = 0
	lim = n
	for i in 1..(lim) do
		if(n%i == 0)
			lim = n/i
			f += 1
		end
	end
	
	return f
end

def div(n)

	exps = Array.new

	for i in 2..n
		while n % i == 0
			if(exps[i] == nil)
				exps[i] = 1
			else
				exps[i] += 1
			end

			n /= i
		end
	end

	exps.compact
	f = 1
	for e in exps
		f *= (e.to_i+1)
	end

	return f
end

tri = 1
n = 2
max = 1

while true do
	tri += n
	n += 1
	if tri%100 != 0
		next
	end
	f = div(tri)
	if f > max
		max = f
		puts "#{tri} #{max}"
	end
	if(f > 500)
		break
	end
end

puts tri