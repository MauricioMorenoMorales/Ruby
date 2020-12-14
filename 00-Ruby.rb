# 7 Ways to create an array

#a = [1,2,3,4, "a", :a]

x = 123

b = %w(a b c d e #{x}) # They are taken as they are
p b

c = %W(a b c d e #{x}) # This has interpolation
p c

d = Array(2)
d.push(2)
p d

e = Array.new(5) { rand(10) } # Puedes llenar un array on 5 espacios de numeros aleatorios
p e

f = (1..10).to_a
p f

g = %i(a b c d)
p g