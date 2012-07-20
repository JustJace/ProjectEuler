# Problem 19 : How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

def StepDay day

	return (day + 1) % 7
end

monthdays = [31,28,31,30,31,30,31,31,30,31,30,31]

dayofweek = 1

solutionCount = 0

for year in 1901..2000
	for month in 0..11
		days = monthdays[month]
		if (month == 1 && year % 4 == 0)
			days += 1
		end
		for day in 1..days
			dayofweek = StepDay dayofweek
			if day == 1 && dayofweek == 0
				solutionCount += 1
			end
		end
	end
end

puts solutionCount

