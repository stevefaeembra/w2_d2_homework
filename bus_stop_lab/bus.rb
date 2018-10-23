class Bus

attr_reader :route_number, :destination, :passengers

  def initialize (route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum, Brum"
  end

  # def passengers
  #   return @passengers
  # end

  def pick_up (person)
    @passengers << person
  end

  def drop_off (person)
    @passengers.delete(person)
  end

  def empty
    @empty = []
  end

end
