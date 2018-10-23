require ("minitest/autorun")
require ("Minitest/rg")
require_relative ("../bear")
require_relative ("../river")
require_relative ("../fish")

class Test_Bear < MiniTest::Test

  def setup
    @yogi = Bear.new("Yogi", "Grizzly")

    @amazon = River.new("Amazon")

    @rod = Fish.new("Rod")
    @jane = Fish.new("Jane")
    @freddy = Fish.new("Freddy")

    @amazon.add_fish(@rod)
    @amazon.add_fish(@jane)
    @amazon.add_fish(@freddy)
  end

  def test_bear_has_a_name
    assert_equal("Yogi", @yogi.name)
  end

  def test_bear_has_a_type
    assert_equal("Grizzly", @yogi.type)
  end

  def test_bear_has_an_empty_stomach
    assert_equal([], @yogi.stomach)
  end

  def test_bear_can_take_fish_from_river
    # it wasn't specified whether we were to implement
    # taking a SPECIFIC fish or just 'a' fish
    # (e.g. last/first/random)
    # so I've assumed, pick off the first one with shift.

    # pluck fish from river
    @yogi.pluck_fish(@amazon)
    # poor Rod, first in, first out
    # is Rod no longer in River?
    assert_equal([@jane,@freddy], @amazon.fishes)
    # should be in Yogi's belly.
    assert_equal([@rod], @yogi.stomach)
  end

  def test_bear_roar
    assert_equal("raawwwr i are Grizzly bear my naem is Yogi", @yogi.roar)
  end

  def test_food_count
    # try plucking two, stomach should have two elements
    @yogi.pluck_fish(@amazon)
    @yogi.pluck_fish(@amazon)
    assert_equal(2, @yogi.food_count)
  end

end
