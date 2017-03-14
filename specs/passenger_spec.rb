require('minitest/autorun')
require('minitest/rg')
require_relative('../passenger')

class TestPassenger < MiniTest::Test 

  def setup
    @passenger = Passenger.new(name, age)
    @passenger1 = Passenger.new("Bill", 21 )
  end 
end