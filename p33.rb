# Problem 33 : There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.
# If the product of these four fractions is given in its lowest common terms, find the value of the denominator.

nums = Array.new
dens = Array.new

for n in 10...100
	for d in (n+1)...100
		if (n/10) == (d%10)
			if (n.to_f/d.to_f) == ( (n%10).to_f / (d/10).to_f )
				nums.push(n)
				dens.push(d)
				next
			end
		elsif (n%10) == (d/10)
			if (n.to_f/d.to_f) == ( (n/10).to_f / (d%10).to_f )
				nums.push(n)
				dens.push(d)
				next
			end
		end
	end
end

tn = 1
for n in nums
	tn *= n
end
dn = 1
for d in dens
	dn *= d
end

puts tn.to_f / dn.to_f