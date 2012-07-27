# Problem 67 : Find the maximum total sum from top to bottom of the triangle in triangle.txt

def Max a,b
	return a > b ? a : b
end


# Main

tri = []
f = File.open("triangle.txt", "r")
while line = f.gets
	tri.push line.split(' ').map{|t| t.to_i}
end

for depth in (tri.length - 2).downto(0)
	for index in 0...tri[depth].length
		a = tri[depth + 1][index]
		b = tri[depth + 1][index + 1]
		tri[depth][index] += Max(a, b)
	end
end

puts tri[0][0]
