# Problem 17 : If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

$zero	= 0
$and	= "and".length
$one	= "one".length
$two	= "two".length
$three	= "three".length
$four	= "four".length
$five	= "five".length
$six	= "six".length
$seven	= "seven".length
$eight	= "eight".length
$nine	= "nine".length
$ten	= "ten".length
$eleven = "eleven".length
$twelve = "twelve".length
$thirteen = "thirteen".length
$fourteen = "fourteen".length
$fifteen = "fifteen".length
$sixteen = "sixteen".length
$seventeen = "seventeen".length
$eighteen = "eighteen".length
$nineteen = "nineteen".length
$twenty = "twenty".length
$thirty = "thirty".length
$forty = "forty".length
$fifty = "fifty".length
$sixty = "sixty".length
$seventy = "seventy".length
$eighty = "eighty".length
$ninety = "ninety".length
$hundred = "hundred".length
$thousand = "thousand".length


def value(n)

	case n
	when 0 then return $zero
	when 1 then return $one
	when 2 then return $two
	when 3 then return $three
	when 4 then return $four
	when 5 then return $five
	when 6 then return $six
	when 7 then return $seven
	when 8 then return $eight
	when 9 then return $nine
	when 10 then return $ten
	when 11 then return $eleven
	when 12 then return $twelve
	when 13 then return $thirteen
	when 14 then return $fourteen
	when 15 then return $fifteen
	when 16 then return $sixteen
	when 17 then return $seventeen
	when 18 then return $eighteen
	when 19 then return $nineteen
	when 20 then return $twenty
	when 30 then return $thirty
	when 40 then return $forty
	when 50 then return $fifty
	when 60 then return $sixty
	when 70 then return $seventy
	when 80 then return $eighty
	when 90 then return $ninety
	when 100 then return $hundred
	when 1000 then return $thousand
	end

end

def score(n)

	s = 0
	case n
	when 1000 then 
		s += value(1) + value(1000)
	when 100..999 then
		s += value(n/100) + value(100)
		s += score(n%100)
		s += $and if n%100 != 0
	when 20..99 then
		s += score(n%10)
		s += value((n/10) * 10)
	when 1..19 then
		s += value(n)
	end

	return s		 
end

t = 0
for i in 1..1000
	t += score(i)
end

puts t