require 'ConsoleGL'

Console.SetTitle("Tetris")




# Game Loop


def renderFloor()
    
    Console.NewLine
    Console.NewLine
    Console.NewLine
    Console.NewLine
    Console.NewLine
    Console.NewLine
    Console.NewLine


    print "                            "


    Console.Draw(Console.LongSquare(0)+"       "+Console.LongSquare(0)+"\n")
    print "                            "
    Console.Draw(Console.LongSquare(0)+"       "+Console.LongSquare(0)+"\n")
    print "                            "
    Console.Draw(Console.LongSquare(0)+"       "+Console.LongSquare(0)+"\n")
    print "                            "
    Console.Draw(Console.LongSquare(0)+"       "+Console.LongSquare(0)+"\n")
    print "                            "
    Console.Draw(Console.LongSquare(0)+"       "+Console.LongSquare(0)+"\n")
    print "                            "


    Console.Draw(Console.LongSquare(0))
    Console.Draw(Console.LongSquare(0))
    Console.Draw(Console.LongSquare(0))
    Console.Draw(Console.LongSquare(0))
    Console.Draw(Console.LongSquare(0))
    Console.Draw(Console.LongSquare(0))
    Console.Draw(Console.LongSquare(0))
    Console.Draw(Console.LongSquare(0))

end


def renderTetris()


    # Make Tetris Things
    tetris1 = ""
    tetris1 += "#\n"
    tetris1 += "#\n"
    tetris1 += "#\n"
    tetris1 += "#\n"
    tetris1 += "#\n"

    # Make Tetris1 into array

    tetris1 = tetris1.chars


    for i in tetris1
        if i == "#"
            Console.Draw(Console.LongSquare(0))
        else
            Console.NewLine
        end
    end
end


def onFrameUpdate()

    # Floor

    renderTetris()
    renderFloor()
    




end


# Run onFrameUpdate()

while true do
    onFrameUpdate()
    sleep(0.2) # Runs every 2 frames no matter the frame rate kinda
    Console.Clear()

    

end
