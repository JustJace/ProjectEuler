# Problem 81 : Find the minimal path sum, in matrix.txt, a 31K text file containing a 80 by 80 matrix, from the top left to the bottom right by only moving right and down.

def trim?(depth, index, psum)

	return false if depth+index < 35
	return true if (depth+index)/158.0 * $sum < psum
	#return true if (158-(depth+index))*$avg + psum > $sum * 1.05

end


def traverse(depth, index, psum)
	# Add current number
	psum += $matrix[depth][index].to_i

	# Heuristic Trim
	return if trim?(depth, index, psum)

	# Check for max depth and index OR If the partial sum is already greater than the current min
	if (depth == $matrix.length - 1) && (index == $matrix[0].length - 1) || (psum > $sum)
		if psum < $sum
			$sum = psum 
			puts "psum = #{psum}"
		end
		return
	end

	# Max depth or max index might've been reached still, but not both

	if (depth != $matrix.length - 1)
		# Can try depth + 1
		traverse(depth + 1, index, psum)
	end

	if (index != $matrix[0].length - 1)
		# Can try index + 1
		traverse(depth, index + 1, psum)
	end
end


#Main
$matrix = Array.new
$sum = 804802
$avg = 0

f = File.open("matrix.txt", "r")
while row = f.gets
	$matrix.push row.split(',')
end
f.close

for c in $matrix
	for d in c
		$avg += d.to_i
	end
end

$avg = $avg / 6400
traverse(0,0,0)
puts $sum