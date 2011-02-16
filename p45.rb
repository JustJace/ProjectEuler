# Problem 45 : It can be verified that T_285 = P_165 = H_143 = 40755.
# Find the next triangle number that is also pentagonal and hexagonal.

## This method is really computationally expensive

tri = Array.new
pen = Array.new
hex = Array.new

puts "Generating..."
for i in 286..100000
	tri.push(i*(i+1)/2)
end

for i in 165..80000
	pen.push(i*(3*i-1)/2)
end

for i in 143..60000
	hex.push(i*(2*i-1))
end
puts "Done!"

for t in tri
	if pen.include?(t) && hex.include?(t)
		puts t
		break
	end
end