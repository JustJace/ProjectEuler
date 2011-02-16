# Problem 80 : For the first one hundred natural numbers, find the total of the digital sums of the first one hundred decimal digits for all the irrational square roots.

require 'decimal'


Decimal.context.precision = 110

t = 0

for i in 1..100
	if Math.sqrt(i) - Math.sqrt(i).to_i == 0.0
		next
	end

	a = Decimal(i)
	b = Decimal('0.5')
	s = ((a**b) - ((a**b).to_i))

	x = 0
	for j in 1..100
		puts j
		s *= 10
		t += (s%10).to_i
		s %= 10
	end
end

puts t