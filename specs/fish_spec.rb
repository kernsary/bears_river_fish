require('minitest/autorun')
require('minitest/rg')
require_relative('../Fish.rb')

class FishTest < MiniTest::Test

  def setup
    @fish_1 = Fish.new("Gloop")
  end

  def test_fish_has_name
    assert_equal("Gloop", @fish_1.name)
  end

end
