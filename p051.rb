require 'Prime'

def replace i, mask, n
	s = i.to_s
	smask = mask.to_s(2)
	
	while (smask.size < s.size)
		smask = '0' + smask
	end
	
	sn = n.to_s

	o = ""

	for idx in 0...(smask.size)
		o << if smask[idx] == '0'
			s[idx]
		     else
		     	sn
		     end
	end

	return o.to_i
end

Prime.each{|p|

	mask = ('1' * p.to_s.size).to_i(2)

	while (mask != 0)
		
		set = []

		for n in 1..9
			o = replace p, mask, n
			set << o if Prime.prime? o
		end

		if set.uniq.size >= 8
			print mask.to_s(2) + " "
			print set
			exit
		end

		mask -= 1
	end
}
