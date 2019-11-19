class Car
  attr_accessor :model, :color, :year, :car_raise, :trip_raise

  def initialize
    @car_raise = car_raise
    @trip_raise = trip_raise
    self.car_raise = true
    self.trip_raise = true
  end

  def start_car
    puts "the car was started"
    self.car_raise = false
  end

  def start_trip
    begin 
      self.trip_raise = false
      raise "Trip can't start if car has not been started" if self.car_raise
      puts "The trip has been started"
    end  
  end

  def finish_trip
    begin
      raise "Trip can't finish if never started it" if self.trip_raise
      puts "The trip has been finished"
    end
  end
end

start = Car.new

start.start_car
start.start_trip
start.finish_trip
