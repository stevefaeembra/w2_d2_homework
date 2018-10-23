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

end
