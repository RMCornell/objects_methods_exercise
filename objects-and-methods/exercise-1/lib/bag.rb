require_relative 'candy'

class Bag
	attr_accessor :empty, :candies

	def initialize(empty = true)
		@empty = empty
		@candies = []
	end

	def empty?
		@empty unless candies.length > 0
	end

	def count
		@candies.length
	end

	def << (candy)
		@candies.push(candy)
	end

	def contains?(candy)
		candy = Candy.new
		@candies.include?(candy)
	end

end

bag = Bag.new
bag << Candy.new("Lindt chocolate")
puts Candy.new("Lindt cocolate")

puts bag.count
puts bag.contains?("Lindt chocolate")
puts bag.candies
