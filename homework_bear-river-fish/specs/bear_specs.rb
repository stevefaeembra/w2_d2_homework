require ("minitest/autorun")
require ("Minitest/rg")
require_relative ("../bear")

class Test_Bear < MiniTest::Test

  def setup
    @yogi = Bear.new("Yogi", "Grizzly")
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

end
