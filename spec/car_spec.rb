require 'spec_helper'

describe Car do #(1) describe - car
	let (:car) {Car.new} #instantiate car and new car

	describe 'Attributes' do #describing attributes that is expected to respond to speed
		it { is_expected.to respond_to :speed }
	end #(2)error message - car attribute should respond to speed
		#so we need to define speed in the car.rb
	
	describe 'Methods' do #describing methods do 
		describe "Accelerate" do
			before { car.accelerate(20) }

			it 'accelerates by a given speed' do
				expect(car.speed).to eq 20
# (3) failure - car methods accelerate accelerates by a given speed 
# so we need to define in car.rb the accelerate 
			end
		end
	end
	
end