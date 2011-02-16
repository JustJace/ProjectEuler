# Problem 52 : Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.


for x in 1..1000000
	sx = x.to_s.chars.to_a.sort
	continue = false
	for i in 2..6
		isx = (i*x).to_s.chars.to_a.sort
		
		if isx != sx
			continue = true
			break
		end
	end

	if continue
		next
	end

	puts x
	break
end