require 'spec_helper'

describe Race do
	let(:race) { Race.new }
#(1) error message - uninitialized constant race
#so need to require 'Race' in my spec helper	
	describe 'Methods' do
		describe '#initialize' do
			it 'instantiates two cars' do
				expect(race.cars.length).to eq 2
#(2) error message - race methods initialize two cars
#with the failure to race
#so need to define the race parameters in race.rb
			end
		end	

		describe '#winner' do
			it 'returns the winner' do
				expect(race.winner).to be_a Car
			end
#fourth method accepted in rspec after this inputted
			it 'is not the loser' do
				expect(race.winner).not_to eq race.loser
			end
#fifth  method accepted in rspec with this inputted
		end	

		describe '#loser' do
			it 'returns the loser' do
				expect(race.loser).to be_a Car
			end
#sixth method accepted
			it 'is no the winner' do
				expect(race.loser).not_to eq race.winner
			end
#seventh method accepted
		end
	end
end














# to do list:
# 1. require spec_helper
# 2. describe something 
# 3. use let to instantiate instance of something 
# 4. describe things that you expect it to do 