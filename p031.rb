# Problem 31
#	In England the currency is made up of pound, £, and pence, p,
#	and there are eight coins in general circulation:
#
#	1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
#	It is possible to make £2 in the following way:
#
#	1£1 + 150p + 220p + 15p + 12p + 31p
#	How many different ways can £2 be made using any number of coins?

class Array
	def Sum
		self.inject(:+)
	end
end

@count = 0
@coins = [200,100,50,20,10,5,2,1]

def RecAddCoin coin, bag = []

	bag << coin
	@count += 1 if (bag.Sum == 200)
	@coins.each{|c| RecAddCoin c, bag.clone if bag.Sum + c <= 200 and c <= coin}
end

for coin in @coins
	RecAddCoin coin
end

p @count
