require ("minitest/autorun")
require ("Minitest/rg")
require_relative("../fish")

class Test_Fish < MiniTest::Test

  def setup
    @fish = Fish.new("Freddy")
  end

  def test_fish_has_a_name
    assert_equal("Freddy", @fish.name)
  end


end
