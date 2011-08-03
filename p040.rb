# An irrational decimal fraction is created by concatenating the positive integers:
# 0.123456789101112131415161718192021...
# It can be seen that the 12th digit of the fractional part is 1.
# If dn represents the nth digit of the fractional part, find the value of the following expression.
# d_1 * d_10 * d_100 * d_1000 * d_10000 * d_100000 * d_1000000

float = ""
i = 1
while float.length < 10**6
	float << i.to_s
	i += 1
end

answer = 1

for e in 1..6
	answer *= float[10**e - 1].to_i
end

puts answer