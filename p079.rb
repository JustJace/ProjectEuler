# Problem 79 :
#	A common security method used for online banking is to ask
#	the user for three random characters from a passcode.
#	For example, if the passcode was 531278, they may ask for
#	the 2nd, 3rd, and 5th characters; the expected reply would be: 317.

#	Given that the three characters are always asked for
#	in order, analyse the file so as to determine the 
#	shortest possible secret passcode of unknown length.

require 'Set'

class Node
	def initialize
		@children = Set.new
	end

	def children
		@children
	end
end


f = File.open("keylog.txt", "r")

keys = []

while (k = f.gets)
	keys.push(k.chomp)
end

nodes = Hash.new

for keyset in keys
	for key in keyset.chars
		nodes[key] = Node.new if !nodes[key]
	end
	nodes[keyset[0]].children << nodes[keyset[1]]
	nodes[keyset[1]].children << nodes[keyset[2]]
end

nodes.each_key{|n| 
	printf "Key: %s\n\t", n
	nodes[n].children.each{|c|
		printf "%s, ", nodes.key(c)
	}
	puts
}

f.close
