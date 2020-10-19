require './lib/ship'

class Board
  attr_reader :cells
              # :place

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

    # @place(ship, coordinates) = place
  end

  def valid_coordinate?(coordinate)
    @cells.one? do |key, cell|
      key == coordinate
    end
  end

  def letters_consecutive?(ship, coordinates)
    letters = []

    coordinates.each do |coordinate|
      letters << coordinate[0].ord
    end

    if letters.uniq.count == 1
      true
    else
    letters.each_cons(2).all? {|a, b| b == a+1}
    end
  end

  def digits_consecutive?(ship, coordinates)
      digits = []

      coordinates.each do |coordinate|
      digits << coordinate[1].to_i
    end
    if digits.uniq.count == 1
      true
    else
      digits.each_cons(2).all? {|a, b| b == a+1}
    end
  end

  def consecutive?(ship, coordinates)
    digits_consecutive?(ship, coordinates) && letters_consecutive?(ship, coordinates)
  end

  def diagonal?(ship, coordinates)
      letters = []
      digits = []

    coordinates.each do |coordinate|
      letters << coordinate[0]
      digits << coordinate[1].to_i
    end
    !((letters.uniq.count > 1) && (digits.uniq.count > 1))
  end

  def valid_placement?(ship, coordinates)
       ship.length == coordinates.count &&
        consecutive?(ship, coordinates) &&
        diagonal?(ship, coordinates) 

  end

  def overlap?(ship, coordinates)
    coordinates.each do |coordinate|
      @cells[coordinate].place_ship(ship)
    end 
  end

  def place(ship, coordinates)
    coordinates.each do |coordinate|
      @cells[coordinate].place_ship(ship) 
    end   
  end
end
