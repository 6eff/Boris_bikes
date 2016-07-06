<<<<<<< HEAD
require_relative './bike'
class DockingStation
  attribute_reader :docking_station
def  intialize
  @docking_station = []
end
	def release_bike
		Bike.new
	end
  def dock
@docking_station += bike

=======
class DockingStation
  def release_bike
>>>>>>> d0a76f9be5dfcf6d8a671f866b6106451ec7a5be
  end
end
