# Problem 1 : Sum of integers that are multiples of 3 and 5 under 1000

puts (0...1000).inject {|sum, n| sum += n % 3 == 0 || n % 5 == 0 ? n : 0}
