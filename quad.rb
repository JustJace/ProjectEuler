# Given ax^2 + bx + c = 0, returns x1,x2

def quad(a, b, c)
	det = (b**2) - 4.0*a*c
	if det < 0
		x1 = 0.1
		x2 = 0.1
		return x1,x2
	end
	x1 = (-b + Math.sqrt(det.to_f))/(2.0*a)
	x2 = (-b - Math.sqrt(det.to_f))/(2.0*a)

	return x1,x2
end