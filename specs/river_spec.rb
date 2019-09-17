require('minitest/autorun')
require('minitest/rg')
require_relative('../River.rb')
require_relative('../Fish.rb')

class RiverTest < MiniTest::Test

  def setup
    @river_1 = River.new("Yukon", @shoal_1)

    @shoal_1 = [@fish_1, @fish_2, @fish_3]

    @fish_1 = Fish.new("Gloop")
    @fish_2 = Fish.new("Bloop")
    @fish_3 = Fish.new("Blub")
  end

  def test_river_has_name
    assert_equal("Yukon", @river_1.name)
  end


end
