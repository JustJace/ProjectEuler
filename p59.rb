# Problem 59 : Decrypt the message and find the sum of the ASCII values in the original text.

f = File.open("cipher1.txt", "r")
encr = f.readline.split(',')

f.close

t = 0

for a in 97..122
	for b in 97..122
		for c in 97..122
			decr = ""
			for i in (0..encr.length).step(3)
				break if i >= encr.length
				decr += (encr[i].to_i^a).chr
				break if i+1 >= encr.length
				decr += (encr[i+1].to_i^b).chr
				break if i+2 >= encr.length
				decr += (encr[i+2].to_i^c).chr
			end
			if decr.include? "darkness"
				puts decr
				for c in decr.chars.to_a
					t += c.ord
				end
				puts t
				exit
			end
		end
	end
end

