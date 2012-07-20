# Problem 31
#	In England the currency is made up of pound, �, and pence, p,
#	and there are eight coins in general circulation:
#
#	1p, 2p, 5p, 10p, 20p, 50p, �1 (100p) and �2 (200p).
#	It is possible to make �2 in the following way:
#
#	1�1 + 150p + 220p + 15p + 12p + 31p
#	How many different ways can �2 be made using any number of coins?


class Array
	def sum
		inject(:+)
	end
end

@coins = [1,2,5,10,20,50,100,200]
@solutions = []

def RecAddCoin bag, coin

	bag.push coin

	return if (bag.sum > 200)

	if bag.sum == 200
		bag.sort!
		@solutions.push bag if !@solutions.include? bag
		return
	end
	
	@coins.each{|coin| RecAddCoin(bag.clone, coin)}
end

RecAddCoin([], 0)
puts @solutions.count
