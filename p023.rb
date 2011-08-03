# Problem 23 : Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.


def abundant? num

	divisorSum = 0
	for d in 1..num / 2
		divisorSum += d if num % d == 0
	end

	return divisorSum > num
end

abundants = []
LIMIT = 28123

for num in 3..LIMIT
	abundants << num if abundant? num
end

puts "Abundant Count: #{abundants.length}"

searchSpace = (1..LIMIT).to_a

for i in abundants
	for j in abundants
		searchSpace[i+j-1] = 0 if i+j-1 < LIMIT
	end
end

puts "Answer: #{searchSpace.inject(:+)}"