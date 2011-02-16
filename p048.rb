# Problem 48 : Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

t = 0

for i in 1..1000
	t += i**i
end

s = t.to_s

puts s.slice((s.length - 10)..(s.length))