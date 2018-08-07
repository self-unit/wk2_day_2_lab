class Bus
  attr_reader :route, :destination

  def initialize(route, destination, passengers)
    @route = route
    @destination = destination
    @passengers = passengers || []
  end

  def drive
    return "Brum brum"
  end

  def how_many
    return @passengers
  end

  def pick_up(person)
    @passengers << person
  end

  def drop_off(person)
    @passengers.delete(person)
  end

  def empty
    @passengers.reject! {|person| person == person}
  end

end
