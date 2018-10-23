require ("minitest/autorun")
require ("Minitest/rg")
require_relative ("../person")

class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("Steven", 48)
  end

  def test_person_has_name
    assert_equal("Steven", @person.name)
  end

  def test_person_has_age
    assert_equal(48, @person.age)
  end
end
