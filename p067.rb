# Problem 67 : Find the maximum total sum from top to bottom of the triangle in triangle.txt


# Trim? Returns a boolean whether or not the traverse should trim that node

def trim?(depth, index, psum)

	return false if depth < 20 #$tri.length / 2
	return true  if (depth.to_f / $tri.length.to_f) * $sum * 0.9 > psum

end


# Traverse at depth, index, and partial sum
def traverse(depth, index, psum)

	# Add the Node
	psum += $tri[depth][index].to_i

	# trim?
	return if trim?(depth, index, psum)

	# If max depth is reached
	if depth == $tri.length - 1
		# And the total is greater
		if psum > $sum
			$sum = psum
			puts $sum
		end
	else
		# Traverse Left
		traverse(depth + 1, index, psum)
		# Traverse Right
		traverse(depth + 1, index + 1, psum)
	end

	return
end

# Main
$sum = 0
$tri = []
f = File.open("triangle.txt", "r")
while line = f.gets
	$tri.push line.split(' ')
end
traverse(0,0,0)
puts $sum