# !7 Ways to create an array

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

# !Ruby loops tutorial

count = 1

p '--------------------'
while count <= 10
	p count
	count += 1
end

p '--------------------'
10.times { |n| p n -100}

p '--------------------'
(1..20).each {|n| p n * n}
(1..20).each {|n| p n * n}

p '--------------------'
(1..5).step(2) {|n| p n * n}

p '--------------------'
# while array.empty?
# 	array.pop
# end

# until condition
# end

# if / unless

# while / until

p '--------------Inject method--------------'

numbers = [10,2,3,4,5]

# total = 0

# p numbers.each {|n| total += n}

# p total

# =>> 15

# numbers.inject { |total, n| p n}
#  =>> 2 3 4 5

p numbers.inject { |total, n| total + n}

p numbers.inject(:+)

p numbers.inject(10) { |total, n| n }

strings = %w(a bb ccc)

p strings.inject(0) {|total, str| total + str.size}