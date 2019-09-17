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
    assert_equal([], @bear_1.get_stomach_contents())
  end

  def test_bear_can_take_fish
    @bear_1.take_fish(@river_1)
    assert_equal(1, @bear_1.get_stomach_contents().count)
    assert_equal(2, @river_1.get_shoal().count)
  end

  # EXTENSION ---------------------------------

  def test_can_roar
    assert_equal("Rrraaaarrrr", @bear_1.roar())
  end

  def test_food_count
    assert_equal(0, @bear_1.food_count())
  end

  def test_bear_can_take_fish_extension_version
    @bear_1.take_fish(@river_1)
    assert_equal(1, @bear_1.food_count())
    assert_equal(2, @river_1.fish_count())
  end

end
