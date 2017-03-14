class Bus

attr_reader :route_number, :destination, :passengers
attr_writer :passengers   

def initialize(route_number, destination) 
  @route_number = route_number
  @destination = destination
  @passengers = []
end 

def bus_drive()
  return "Brum Brum"
end

def how_many_passengers()
  return @passengers.length
end

def pick_up(passenger1)
  pick_up = @passengers << passenger1
end 

 def drop_off(passenger)
   @passengers.delete(passenger)
 end  

 def empty
    @passengers.clear()
  end

end 


