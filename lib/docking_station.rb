require_relative 'bike'
class DockingStation
  attr_reader :bike

  def release_bike
    if @bike == nil
      raise 'No bikes available!'
    else
      @bike
    end
  end

  def dock(bike)
    raise 'No space available in dock!' if !@bike.nil?
    @bike = bike
  end
end
