class Cell
    attr_reader :coordinate,
                :ship

  def initialize(coordinate)
    @coordinate = coordinate
    @ship = nil
    @fired_upon = false
  end

  def empty?
    @ship.nil?
  end

  def place_ship(cruiser)
    @ship = cruiser
  end

  def fired_upon?
    @fired_upon
  end

  def fire_upon
    if @ship == nil
     @fired_upon = true
   elsif @ship.hit
     @fired_upon = true
    end
  end

  def render(option = false)
    if option == true && @ship
      "S"
    elsif @fired_upon == false
      "."
    elsif @ship == nil
      "M"
    elsif @ship && @ship.sunk? == false
      "H"
    else "X"
    end
  end
end

