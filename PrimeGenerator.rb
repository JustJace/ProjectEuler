class PrimeGenerator
	
	$primes = [2,3]	
	
	def self.prime? n
		$primes.each {|p| return false if n % p == 0}
		return true
	end


	def self.generate primeCount
		n = 6
		while $primes.length < primeCount
			$primes << n+1 if prime? n+1
			$primes << n-1 if prime? n-1
			n += 6
		end

		return $primes
	end

end
