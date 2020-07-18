require 'ConsoleGL'

# Setting Up
Console.SetTitle("Raycasting 3D Demo - ConsoleGL")
Console.Clear()

# Distance
distance = 0


# Creating Map
map = ""

map += "#####################\n"
map += "#...................#\n"
map += "#...................#\n"
map += "#...................#\n"
map += "#.........&.........#\n"
map += "#...................#\n"
map += "#...................#\n"
map += "#...................#\n"
map += "#####################\n"

## Converting Map to Array
map = map.chars

# "Raycasting"

counter = 0
x = 0
pass_buffer = 0

for ray in map
    if ray == "#"
        
        #while counter <= 11 do
        Console.Draw(Console.LongSquare(0))
            
            #if counter == 10 & x <= 10
            #    Console.NewLine
            #    counter = 0
            #else
            #    counter += 1
            #    x+= 1
            #end
        #end
        
    elsif ray == "."
        # pass
        pass_buffer += 1
    elsif ray == "&"
        # Find Distance
        
    else
        Console.NewLine
    end
end

# 