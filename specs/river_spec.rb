require('minitest/autorun')
require('minitest/rg')
require_relative('../River.rb')
require_relative('../Fish.rb')

class RiverTest < MiniTest::Test

  def setup

    @fish_1 = Fish.new("Gloop")
    @fish_2 = Fish.new("Bloop")
    @fish_3 = Fish.new("Blub")

    @shoal_1 = [@fish_1, @fish_2, @fish_3]

    @river_1 = River.new("Yukon", @shoal_1)

  end

  def test_river_has_name
    assert_equal("Yukon", @river_1.name)
  end

  def test_river_has_fish
    assert_equal(@shoal_1, @river_1.get_shoal())
  end

# EXTENSION ---------------------------------

  def test_fish_count
    assert_equal(3, @river_1.fish_count())
  end


end
