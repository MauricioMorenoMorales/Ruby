# # !7 Ways to create an array

# #a = [1,2,3,4, "a", :a]

# x = 123

# b = %w(a b c d e #{x}) # They are taken as they are
# p b

# c = %W(a b c d e #{x}) # This has interpolation
# p c

# d = Array(2)
# d.push(2)
# p d

# e = Array.new(5) { rand(10) } # Puedes llenar un array on 5 espacios de numeros aleatorios
# p e

# f = (1..10).to_a
# p f

# g = %i(a b c d)
# p g

# # !Ruby loops tutorial

# count = 1

# p '--------------------'
# while count <= 10
# 	p count
# 	count += 1
# end

# p '--------------------'
# 10.times { |n| p n -100}

# p '--------------------'
# (1..20).each {|n| p n * n}
# (1..20).each {|n| p n * n}

# p '--------------------'
# (1..5).step(2) {|n| p n * n}

# p '--------------------'
# # while array.empty?
# # 	array.pop
# # end

# # until condition
# # end

# # if / unless

# # while / until

# p '--------------Inject method--------------'

# numbers = [10,2,3,4,5]

# # total = 0

# # p numbers.each {|n| total += n}

# # p total

# # =>> 15

# # numbers.inject { |total, n| p n}
# #  =>> 2 3 4 5

# p numbers.inject { |total, n| total + n}

# p numbers.inject(:+)

# p numbers.inject(10) { |total, n| n }

# strings = %w(a bb ccc)

# p strings.inject(0) {|total, str| total + str.size}

# p '--------------Sorting--------------'

# numberssor = [5,8,2,9,1]

# p numberssor.sort

# stringsor= %w(bb cc aa)

# p stringsor.sort

# stringssor2 = %w(test foo bar bacon)

# p stringssor2.sort_by { |str| str.length}
# p stringssor2.sort_by(&:length)
# p stringssor2.sort_by { |str| -str.length }

# mp3 = %w(20.mp3 31.mp3 10.mp3 5.mp3 88mp3)

# p mp3.sort_by { |file| -file.scan(/\d+/).first.to_i}

# meals = {bacon: 100, chocolate: 200, cacahuate: 150}
# p meals.sort_by { |k, v| k}.to_h

# p '--------------Diferences between puts print and p--------------'

# puts 'Hello'
# puts 'There'

# print 'Hello'
# print ' there'

# p 123
# p 'Hello'
# p %w(hola estoy probando escribir con esto)
# puts %w(hola estoy probando escribir con esto)
# puts "Puts es más usado para enviar mensajes"
# p "p puede ser usado más para el desarrollo"

# p '--------------Hashes--------------'

# emptyhash = {}
# emptyhash = Hash.new

# hash = {bacon: 300,
# 	name: 'Jesus castello',
# 	bacon: 200,
# 	"age" => 31,
# }

# puts hash[:bacon]
# puts hash[:name]
# puts hash[:bacon]
# p hash["age"]

# p hash
# p hash.keys

# country_codes = {
# 	"ES" => "Spain",
# 	"UK" => "United Kingdom",
# 	"US" => "United States",
# }

# p country_codes["US"]

# counthash = Hash.new(0)
# wordshash = 'Hello there hello'.split

# p wordshash

# wordshash.each { |word| counthash[word] += 1 }

# p count

p '--------------SuperKeyword--------------'

class Animal
	def name
		puts "Animal"
	end
end

module ChangeName
	def name
		puts "Module"
	end
end

class Cat < Animal
	include ChangeName
	def name
		super
		puts "Cat"
		super
	end
end

c = Cat.new
c.name

p '--------------Builder Pattern--------------'

class FirewallRules
	def destination(destination)
		@destination = destination
		self
	end
	def source(source)
		@source = source
		self
	end
	def protocol(protocol)
		@protocol = protocol
		self
	end
	def enable
	end
end

fw = FirewallRules.new
fw.destination("Google.com")
	.source("Google.com")
	.protocol("Google.com")
	.enable

# class FirewallRule
# 	def initialize(destination:, source:, protocol: "tcp")
# 	end
# end

# fw2 = FirewallRule.new(destination: "google.com")
# fw3 = FirewallRule.new.tap do |fw|
# 	fw.destination = "google.com"
# 	fw.source = "localhost"
# end

# Con este patron puedes definir el orden que quieras a la hora de
# declarar una clase

p '--------------String interpolation--------------'

