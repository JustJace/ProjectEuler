# Problem 99 : Using base_exp.txt, a text file containing one thousand lines with a base/exponent pair on each line, determine which line number has the greatest numerical value.

f = File.open("base_exp.txt", "r")
lines = Array.new

while l = f.gets
	lines.push(l)
end
f.close

puts lines
