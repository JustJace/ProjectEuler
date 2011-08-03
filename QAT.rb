# Testing Quake's InvSqrt Accuracy

def QIS(x)
	puts x
	xh = 0.5 * x
	i = x.to_i
	puts i
	i = 0x5f3759d5 - (i >> 1)
	puts i
	x = i.to_f
	puts x
	x = x*(1.5 - xh*x*x)
	puts x
	return x
end

def NIS(x)
	return 1.0 / Math.sqrt(x)
end

puts 5.to_s(2).to_i