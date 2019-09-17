require('minitest/autorun')
require('minitest/rg')
require_relative('../Bear.rb')
require_relative('../River.rb')

class BearTest < MiniTest::Test

  def setup

    @bear_1 = Bear.new("Bruno", "Grizzly")

  end

  def test_bear_has_name
    assert_equal("Bruno", @bear_1.name)
  end


end
