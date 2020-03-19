require_relative 'bike'
class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if empty?
      raise 'No bikes available!'
    else
      @bikes.pop
    end
  end

  def dock(bike)
    raise 'No space available in dock!' if full?
    @bikes.push(bike)
    bike
  end



  def full?
    if @bikes.length < 20
      false
    else
      true
    end
  end

 def empty?
   if @bikes.length == 0
     true
   else
     false
   end
 end
end
