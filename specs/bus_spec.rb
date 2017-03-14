require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../passenger')

class TestBus < MiniTest::Test 

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @passenger = Passenger.new("Brian", 30)
    @passenger1 = Passenger.new("Bill", 21)
    @passenger2 = Passenger.new("Bob", 25)
    @bus.passengers = [@passenger2] 
  end 

  def test_bus_drive
    assert_equal("Brum Brum", @bus.bus_drive)
  end

  def test_how_many_passengers
    assert_equal(1, @bus.passengers.length())
  end 
  # changed for adding passenger2


  def test_bus_pick_up
    @bus.pick_up(@passenger1)
    assert_equal(2, @bus.passengers.length())
  end
  # changed for adding passenger2

  def test_bus_drop_off
      @bus.drop_off(@passenger2)
      assert_equal(0, @bus.passengers.length())
  end

  def test_empty
      @bus.empty()
      assert_equal(0, @bus.passengers.length())
  end 
 
 
  
  
  # Add an 'empty' method to remove all of the passengers - this might be used when the bus reaches its destination, or if the bus breaks down. It should remove all of the passengers from the array.
end
