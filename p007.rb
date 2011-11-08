# Problem 7 : Find the 10001st prime

require './PrimeGenerator'

puts PrimeGenerator.generate(10**4 + 1)[10**4]
