require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal", [])
    @passenger1 = Person.new("Keith", 41)
    @passenger2 = Person.new("John", 38)
  end

  def test_bus_has_route
    assert_equal(22, @bus.route)
  end

  def test_bus_has_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_bus_can_drive
    assert_equal("Brum brum", @bus.drive)
  end

  def test_how_many_passengers
    assert_equal([], @bus.how_many)
  end

  def test_add_person
    assert_equal(1, @bus.pick_up(@passenger1).count)
  end

  def test_drop_off_person
    @bus.pick_up(@passenger1)
    @bus.drop_off(@passenger1)
    assert_equal(0, @bus.how_many.count)
  end

  def test_empty_passengers
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.empty
    assert_equal(0, @bus.how_many.count)
  end



end
