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

  end
end
