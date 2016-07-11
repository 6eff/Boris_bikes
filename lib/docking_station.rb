require_relative 'bike'
require_relative 'bike_container'
class DockingStation
  include BikeContainer

  def release_bike
    fail 'No bikes available' if working_bikes.empty?
    bikes.delete working_bikes.pop
  end

  def dock_bike(bike)
    add_bike bike
  end

  private

  def working_bikes
    bikes.reject { |bike| bike.broken? }
  end
end
# class DockingStation
# attr_reader :bikes
# attr_reader :capacity
# DEFAULT_CAPACITY = 20
# def initialize(capacity = DEFAULT_CAPACITY)
# @bikes = []
# @capacity = capacity
# end
#
#   def release_bike bike
#     if empty?
#       raise 'No bikes available'
#     elsif bike.broken?
#       raise  'No bikes available'
#     else
#       @bikes.delete(bike)
#     end
#   end
#
#   def dock_bike bike
#     raise 'Docking Station is full' if full?
#     @bikes << bike
#   end
#
#   private
#
#   def full?
#      @bikes.count >= DEFAULT_CAPACITY
#   end
#
#   def empty?
#     @bikes.empty?
#   end
# end
