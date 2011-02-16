# Problem 79 : Given that the three characters are always asked for in order, analyse the file so as to determine the shortest possible secret passcode of unknown length.

f = File.open("keylog.txt", "r")

keys = Array.new

while (k = f.gets)
	keys.push(k)
end

for key in keys
	# Do something :(
end

f.close