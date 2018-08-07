require('MiniTest/autorun')
require('minitest/rg')
require_relative('../person')

class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("Colin", 23)
  end

  def test_has_name
    assert_equal("Colin", @person.name)
  end

  def test_has_age
    assert_equal(23, @person.age)
  end

end
