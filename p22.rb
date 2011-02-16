# Problem 22 : What is the total of all the name scores in the file?


def NS(name)
	chars = name.chars.to_a

	score = 0
	for char in chars
		score += (1 + char.ord - 'A'.ord)
	end

	return score
end

f = File.open("names.txt", "r")

names = f.readline.tr('"', '').split(',')
names.sort!

t = 0
i = 1
for name in names
	t += (NS(name)*i)
	i += 1
end

puts t

f.close