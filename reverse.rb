def reverse( s )
	return ( s.length == 1 ) ? s : reverse( s[ ( s.length / 2 ) ... ( s.length ) ] ) + reverse( s[ 0 ... ( s.length / 2 ) ] ) 
end

puts reverse("Hello World!");