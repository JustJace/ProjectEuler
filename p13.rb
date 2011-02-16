# Problem 13 : Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

f = File.open("numbers.txt", "r")
nums = f.readline.split(',')
t = 0
for n in nums
	t += n.to_i
end
puts t.to_s.slice!(0..9)