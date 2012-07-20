# Find the value of d<1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.

bestRepeat = 0
bestD = 0
for d in 1...1000
	hash = []
	r = 1
	while true
		hash.push [r,d]
		r = r % d
		r = r * 10

		if hash.include? [r,d]
			repeat = hash.length - hash.index([r,d])
			if repeat > bestRepeat
				bestRepeat = repeat
				bestD = d
			end

			break
		end
	end
end

puts bestD
