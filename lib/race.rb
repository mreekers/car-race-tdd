require_relative 'car'

class Race
	attr_reader :cars
#inputting to fix error message 2
	def initialize
		@cars = []
		go!
	end

	def winner
		@cars.sort_by(&:speed).last
	end

	def loser
		@cars.sort_by(&:speed).first
	end

private
	def random_speed
		(rand * 100).round
	end

	def go!
		@cars << Car.new
		@cars << Car.new

		@cars.first.accelerate(random_speed)
		@cars.last.accelerate(random_speed)
	end
#(2) is now fixed inputting the parameters for the race

end