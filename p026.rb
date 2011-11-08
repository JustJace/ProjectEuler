# Find the value of d<1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.

require 'bigdecimal'

best = 0
for d in 1...4
	fraction = BigDecimal("1",100).div BigDecimal(d.to_s,100)
	puts fraction.to_s("F")
end
