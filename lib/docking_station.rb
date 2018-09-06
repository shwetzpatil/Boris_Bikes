require_relative "./bike"
class DockingStation
  attr_reader :bikes, :capacity

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Dock station is full" if full?
    @bikes.push(bike)
  end
  # def bike
  #   @bike
  # end
  private
    def full?
      @bikes.length >= @capacity
    end

    def empty?
      @bikes.empty?
    end
end

# docking_station = DockingStation.new
# b = docking_station.release_bike
# puts b.working?
