require ("minitest/autorun")
require ("Minitest/rg")
require_relative ("../bus")

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

end
