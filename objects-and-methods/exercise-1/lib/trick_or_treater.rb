class TrickOrTreater
	attr_accessor :costume

	def initialize(costume)
		@costume = costume
		@bag = Bag.new
	end

	def dressed_up_as
		@costume.style
	end

	def bag
		@bag
	end

	def empty?
		bag
	end

	def has_candy?
		bag.candies.count > 0
	end

	def candy_count
		bag.candies.length
	end

	def eat
		bag.candies.pop
	end

end