require_relative './bike'
class DockingStation
attr_reader :bike
@@bikes = []
	def release_bike
    # if @@bikes.count > 0
  		Bike.new
    #   @@bikes -= @bike
    # else
    #   'no bikes'
    # end
	end
  def dock(bike)
    @bike = [bike]
    @@bikes += @bike
  end
  def bikes
    puts @@bikes
  end
end
