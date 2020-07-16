require 'ConsoleGL'

counter = 0
currentColor = Color.WHITE

while true do

    if counter == 0
        currentColor = Color.WHITE
    elsif counter == 1
        currentColor = Color.GREEN
    else
        currentColor = Color.RED
    end



    Console.Draw(Console.BigSquareMiddle(currentColor))

    if counter > 4
        counter = 0
        Console.NewLine
    else
        counter += 1
    end

end