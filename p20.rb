# Problem 20 : Find the sum of the digits in the number 100!

n = (1..100).inject(:*)
s = n.to_s.chars.to_a
t = 0
for c in s
	t += c.to_i
end
puts t