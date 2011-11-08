# Problem 6 : Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

#(1+..100)^2 - 1^2+..100^2

total = 0

(1..100).each { |i|
	(1..100).each { |j|
		next if i == j
		total += i * j
	}
}

puts total
