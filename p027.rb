# Problem 27 : Considering quadratics of the form: n^2 + an + b, where |a| < 1000 and |b| < 1000
# Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum number of primes 
# for consecutive values of n, starting with n = 0.

$primes = [2,3]
$NLIMIT = 100

def prime? n
	for p in $primes
		if n % p == 0
			return false
		end
	end
	return true
end

i = 6
while true
	$primes << i+1 if prime? i+1
	$primes << i-1 if prime? i-1
	i += 6
	break if i > $NLIMIT * $NLIMIT + $NLIMIT * 1000 + 1000 
end

def Q a,b,n
	return b if n == 0
	return n**2 + a*n + b
end

best = 0
bestA = 0
bestB = 0

for a in -999..999
	for b in -999..999
		next unless $primes.include? b
		consecutive = 0
		for n in 0..$NLIMIT
			if $primes.include? Q a,b,n
				consecutive += 1
			else
				if consecutive > best
					best = consecutive
					bestA = a
					bestB = b
					puts "A: #{a} B: #{b} C: #{consecutive}"
				end
				break
			end
		end
	end
end

puts bestA * bestB