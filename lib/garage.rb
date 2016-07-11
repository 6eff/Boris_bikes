require_relative 'bike'
require_relative 'bike_container'
class Garage
  include BikeContainer

  def let_out_bike
    fail 'No bikes available' if working_bikes.empty?
    bikes.delete working_bikes.pop
  end

  def accept_bike(bike)
    add_bike bike
  end
  def fix_bikes(bike)
    bike.fix?
  end
  private
  def working_bikes
    bikes.reject { |bike| bike.broken? }
  end
end
