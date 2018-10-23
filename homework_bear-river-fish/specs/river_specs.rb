require ("minitest/autorun")
require ("Minitest/rg")
require_relative("../river")
require_relative("../fish")

class Test_River < MiniTest::Test

  def setup
    @amazon = River.new("Amazon")
  end

  def test_river_has_name
    assert_equal("Amazon",@amazon.name)
  end

  def test_river_starts_off_with_no_fish
    assert_equal([], @amazon.fishes)
  end

  def test_river_can_add_a_fish
    freddy = Fish.new("Freddy")
    @amazon.add_fish(freddy)
    assert_equal(freddy, @amazon.fishes[0])
    assert_equal(1, @amazon.fishes.length)
  end

  def test_river_can_hold_more_than_one_fish
    rod = Fish.new("Rod")
    @amazon.add_fish(rod)
    jane = Fish.new("Jane")
    @amazon.add_fish(jane)
    freddy = Fish.new("Freddy")
    @amazon.add_fish(freddy)
    assert_equal(3, @amazon.fishes.length)
    assert_equal([rod,jane,freddy], @amazon.fishes)
  end

end
