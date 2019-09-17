require('minitest/autorun')
require('minitest/rg')
require_relative('../Bear.rb')
require_relative('../River.rb')
require_relative('../Fish.rb')

class BearTest < MiniTest::Test

  def setup

    @fish_1 = Fish.new("Gloop")
    @fish_2 = Fish.new("Bloop")
    @fish_3 = Fish.new("Blub")

    @shoal_1 = [@fish_1, @fish_2, @fish_3]

    @river_1 = River.new("Yukon", @shoal_1)

    @bear_1 = Bear.new("Bruno", "Grizzly")

  end

  def test_bear_has_name
    assert_equal("Bruno", @bear_1.name)
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear_1.type)
  end

  def test_can_get_stomach_contents
    assert_equal([], @bear_1.get_stomach_contents)
  end

  # def test_bear_can_take_fish
  #   @bear_1.take_fish(@river_1, @fish_1)
  #   assert_equal(@b)
  # end
  #

end
