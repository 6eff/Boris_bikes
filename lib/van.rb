require_relative 'bike'
require_relative 'bike_container'
class Van
  include BikeContainer

  def unload_bike
    fail 'No bikes available' if working_bikes.empty?
    bikes.delete working_bikes.pop
  end

  def load_bike(bike)
    add_bike bike
  end

  private

  def working_bikes
    bikes.reject { |bike| bike.broken? }
  end
end
