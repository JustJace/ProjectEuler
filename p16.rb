# Problem 16 : What is the sum of the digits of the number 2^1000?

n = (2**1000).to_s.chars.to_a

t = 0

for char in n
	t += char.to_i
end

puts t