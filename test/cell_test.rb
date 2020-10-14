require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'
require './lib/cell'

class Test < Minitest::Test

  def setup
    @cell = Cell.new("B4")
    @cruiser = Ship.new("Cruiser", 3)
  end

  def test_it_exists

    assert_instance_of Cell, @cell
    assert_equal "B4", @cell.coordinate
    # assert_equal nil, @cell.ship
    assert_nil @cell.ship
  end

  def test_is_it_empty

    assert_equal true, @cell.empty?
  end

  def test_place_ship

    @cell.place_ship(@cruiser)

    assert_equal @cruiser, @cell.ship
    assert_equal false, @cell.empty?
  end

  def test_fired_upon

    @cell.place_ship(@cruiser)
    assert_equal false, @cell.fired_upon?
    @cell.fire_upon
    assert_equal 2, @cell.ship.health
    assert_equal true, @cell.fired_upon?
  end
end
