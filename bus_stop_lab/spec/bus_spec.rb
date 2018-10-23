require ("minitest/autorun")
require ("Minitest/rg")
require_relative ("../bus")
require_relative ("../person")

class BusTest < MiniTest::Test

  def setup

    @bus = Bus.new("22", "Ocean Terminal")


  end

  def test_bus_has_route_number
    expected = "22"
    actual = @bus.route_number

    assert_equal(expected, actual)
  end

  def test_bus_has_destination
    expected = "Ocean Terminal"
    actual = @bus.destination

    assert_equal(expected, actual)
  end

  def test_bus_can_drive_?
    expected = "Brum, Brum"
    actual = @bus.drive

    assert_equal(expected, actual)

  end


  def test_does_bus_have_passengers
    expected = []
    actual = @bus.passengers

    assert_equal(expected, actual)
  end

  def test_how_many_passengers_on_bus
    expected = 0
    actual = @bus.passengers.count

    assert_equal(expected, actual)
  end

  def test_additon_of_passenger
    @bus.pick_up(Person.new("Chris", 30))

    expected = 1
    actual = @bus.passengers.count

    assert_equal(expected, actual)

  end


  def test_drop_off
    person1 = Person.new("Joe", 45)
    @bus.pick_up(person1)
    person2 = Person.new("Sue", 32)
    @bus.pick_up(person2)

    @bus.drop_off(person2)

    expected =1
    actual = @bus.passengers.count
    assert_equal(expected, actual)

    expected = person1
    actual = @bus.passengers[0]
    assert_equal(expected, actual)
  end

  def test_empty_bus
    @bus.empty()
    expected = 0
    actual = @bus.passengers.length
    assert_equal(expected, actual)
  end

end
