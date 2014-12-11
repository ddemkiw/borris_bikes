require_relative 'bike'
require_relative 'bike_container'
require_relative 'docking_station'

class Van
  include BikeContainer
  include ObjectSpace

  def initialize(options = {})
  	self.capacity=(options.fetch(:capacity, capacity))
  end

  def station_pickup(station)
  	broken_bikes = station.broken_bikes 
    broken_bikes.each {|bike| dock(bike)}
    roken_bikes.each {|bike| station.release(bike)}
  end

  def garage_pickup(garage)
  	available_bikes = garage.available_bikes
  	available_bikes.each {|bike| dock(bike)}
    available_bikes.each {|bike| garage.release(bike)}
  end


end
