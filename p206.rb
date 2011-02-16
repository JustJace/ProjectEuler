# Problem 206 : Find the unique positive integer whose square has the form 1_2_3_4_5_6_7_8_9_0, where each “_” is a single digit.

for i in (3162277660..4393176530).step(10)
	s = (i**2).to_s.chars.to_a
	next if s[0] != 1
	next if s[2] != 2
	next if s[4] != 3
	next if s[6] != 4
	next if s[8] != 5
	next if s[10] != 6
	next if s[12] != 7
	next if s[14] != 8
	next if s[16] != 9
	next if s[18] != 0

	puts i
	puts i**2
	break
end