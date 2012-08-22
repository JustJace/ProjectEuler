# Problem 41

#	We shall say that an n-digit number is pandigital if it
#	makes use of all the digits 1 to n exactly once.
#	For example, 2143 is a 4-digit pandigital and is also prime.

#	What is the largest n-digit pandigital prime that exists?

def prime? n
        return false if n < 2
        return true if n == 2 or n == 3
        (2..(n ** 0.5)).each{|x| return false if n % x == 0}
        return true
end

def solve i
	while i.size > 0
		i.permutation.map{|p| p.join.to_i}.each{|p| return p if prime? p}
	end
	i.slice! 0
end

puts solve [7, 6, 5, 4, 3, 2, 1]
