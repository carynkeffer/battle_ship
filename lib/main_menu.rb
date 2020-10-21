puts "Welcome to BATTLESHIP"
puts "Enter p to play. Enter q to quit."

input = $stdin.gets.chomp

if input == "p"
    #we want the computer player to place ships
    puts "I have laid out my ships on the grid."
    puts "You now need to lay out your two ships."
    puts "The Cruiser is three units long and the Submarine id two units long."
    print #empty board
    puts "Enter the squares for the Cruiser (3 spaces):"
    print "> "
else 
    puts "Come back later."
end

ship_placement = $stdin.gets.chomp

if ship_placement == ("A1".."D4")