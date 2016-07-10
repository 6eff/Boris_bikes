require_relative 'bike'

class DockingStation
attr_reader :bikes
DEFAULT_CAPACITY = 20
def initialize(capacity = DEFAULT_CAPACITY)
@bikes = []
@capacity = capacity
end

  def release_bike bike
    if empty?
      raise 'No bikes available'
    elsif bike.broken?
      raise  'No bikes available'
    else
      @bikes.delete(bike)
    end
  end

  def dock_bike bike
    raise 'Docking Station is full' if full?
    @bikes << bike
  end

  private

  def full?
     @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end
