require_relative "./bike"
class DockingStation
  attr_reader :bikes
  attr_accessor :capacity
  DEFAULT_CAPACITY = 20
  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    working_bikes = @bikes.select { |bike| bike.broken == false}
    working_bike = working_bikes.first
    @bikes.delete(working_bike)
    working_bike
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
