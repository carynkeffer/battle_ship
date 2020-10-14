require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'

class ShipTest < Minitest::Test

  def setup
    @cruiser = Ship.new("Cruiser", 3)
  end

  def test_it_exists

   assert_instance_of Ship, @cruiser
   assert_equal "Cruiser", @cruiser.name
   assert_equal 3, @cruiser.length
   assert_equal 3, @cruiser.health
  end

  def test_does_it_float

    assert_equal false, @cruiser.sunk?
  end
end
