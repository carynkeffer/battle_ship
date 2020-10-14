class Cell
    attr_reader :coordinate,
                :ship

  def initialize(coordinate)
    @coordinate = coordinate
    @ship = nil
  end
end






# pry(main)> require './lib/ship'
# # => true
#
# pry(main)> require './lib/cell'
# # => true
#
# pry(main)> cell = Cell.new("B4")
# # => #<Cell:0x00007f84f0ad4720...>
#
# pry(main)> cell.coordinate
# # => "B4"
#
# pry(main)> cell.ship
# # => nil
#
# pry(main)> cell.empty?
# # => true
#
# pry(main)> cruiser = Ship.new("Cruiser", 3)
# # => #<Ship:0x00007f84f0891238...>
#
# pry(main)> cell.place_ship(cruiser)
#
# pry(main)> cell.ship
# # => #<Ship:0x00007f84f0891238...>
#
# pry(main)> cell.empty?
# # => false
