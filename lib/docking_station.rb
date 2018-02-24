require_relative 'bike'

class DockingStation
  def release_bike
    Bike.new
  end

  #Use an instance variable to store the bike
  # in the 'state' of this instance
  def dock(bike)
    @bike = bike
  end


  # let's add to our #bike method to return the
  # bike we docked
  # def bike
  #   @bike
  # end
  attr_reader :bike
end
