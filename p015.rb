# Problem 15 : How many routes are there through a 20x20 grid? top left to bottom right without backtracking
## Same as pascals triangle at that point. Middle term of the 40th row = 40C20
### 40! / (20!)^2
#### Future work : Could implement pascals triangle myself

n = (1..40).inject(:*) / ((1..20).inject(:*)**2)

puts n