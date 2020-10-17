class Board
  attr_reader :cells
  def initialize
    @cells =  {
    "A1" => Cell.new("A1"),
    "A2" => Cell.new("A2"),
    "A3" => Cell.new("A3"),
    "A4" => Cell.new("A4"),
    "B1" => Cell.new("B1"),
    "B2" => Cell.new("B2"),
    "B3" => Cell.new("B3"),
    "B4" => Cell.new("B4"),
    "C1" => Cell.new("B5"),
    "C2" => Cell.new("C2"),
    "C3" => Cell.new("C3"),
    "C4" => Cell.new("C4"),
    "D1" => Cell.new("D1"),
    "D2" => Cell.new("D2"),
    "D3" => Cell.new("D3"),
    "D4" => Cell.new("D4")
      }
  end

  def valid_coordinate?(coordinate)
    @cells.one? do |key, cell|
      key == coordinate
    end
  end

  def split_coordinates?(coordinate)
    letters = []
    digits = []

    coordinate.each do |coordinate|
      letters << location[0].ord 
      digits << location[1].to_i 
    end
    ((letters.first..letters.last).to_a == letters) ^
    ((digits.first..digits.last).to_a == digits)
  end

  def valid_placement?(ship, coordinates)
     if ship.length == coordinates.count && 
        split_coordinates?(coordinate)
        true
     else 
        false 
     end 
  end
end
