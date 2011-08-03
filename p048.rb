# Problem 48 : Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

puts (1..1000).inject{|x, i| x + i**i}.to_s[-10..-1]