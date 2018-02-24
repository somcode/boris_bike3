require_relative 'bike'

class DockingStation
  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  #Use an instance variable to store the bike
  # in the 'state' of this instance
  def dock(bike)
    fail 'Docking station full' if @bike
    @bike = bike
  end


  # let's add to our #bike method to return the
  # bike we docked
  # def bike
  #   @bike
  # end
  attr_reader :bike
end
