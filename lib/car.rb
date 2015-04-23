class Car 
	attr_reader :speed #(1)implementing this makes our test a success for describing attributes

	def initialize
		@speed = 0
	end

	def accelerate(gain)
		@speed += gain
	end
#defining the initialize and setting speed to 0, then
#defining accelerate and speed to gain completes the describe
#methods and accelerate from car_spec
end