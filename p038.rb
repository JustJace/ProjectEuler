# Problem 38
# Take the number 192 and multiply it by each of 1, 2, and 3:

# 192 x 1 = 192
# 192 x 2 = 384
# 192 x 3 = 576
# By concatenating each product we get the 1 to 9 pandigital,
# 192384576. We will call 192384576 the concatenated product 
# of 192 and (1,2,3)

# The same can be achieved by starting with 9 and multiplying by
# 1, 2, 3, 4, and 5, giving the pandigital, 918273645, which is 
# the concatenated product of 9 and (1,2,3,4,5).

# What is the largest 1 to 9 pandigital 9-digit number that can 
# be formed as the concatenated product of an integer with
# (1,2, ... , n) where n > 1?

highest = 0
for p in 2..10000
	shelf = []
	for n in 1..p
		(n * p).to_s.chars.each{|c| shelf << c.to_i}
		break if shelf.length >= 9
	end
	if shelf.length == 9
		if shelf.sort == [1, 2, 3, 4, 5, 6, 7, 8, 9]
			if shelf.join.to_i > highest
				highest = shelf.join.to_i
			end
		end
	end
end

p highest
