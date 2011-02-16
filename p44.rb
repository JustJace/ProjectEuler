# Problem 44 : Find the pair of penttagonal numbers, P_j and P_k, for which their sum and difference is penttagonal and D = |P_k - P_j| is minimised; what is the value of D?

def pent?(n)

	n = n.to_f
	t = (Math.sqrt(24.0*n+1.0)+1.0)/6.0
	return true if (t - t.to_int == 0)
	return false
end

pent = Array.new

for i in 1..5000
	pent.push i*(3*i - 1)/2
end

d = 100000000000

for j in pent
	for k in pent
		next if j <= k
		sum = j + k
		dif = j - k
		if pent?(sum) && pent?(dif)
			puts "#{j} #{k}"
			puts d = dif if dif < d
		end
	end
end

puts d