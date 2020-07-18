# Day 1
# Tasks Finished Today:
#  - Template Code Finished
#  - Get User Input

require 'ConsoleGL'

Console.SetTitle("Snake - ConsoleGL - Day 1")

system "@echo off" #later add support for linux and osx
Console.Clear()


class Snake

    #onStart()

    snake_length = 0
    times_moved = 0
    run = true

    #onFrameUpdate()

    def self.onFrameUpdate()
        for moved in times_moved
            if times_moved != 0
                print " "
            end
        end
        Console.Draw(Console.BigSquareMiddle(Color.BLUE))
        next_cmd = gets
        if next_cmd.to_s == "left\n" or next_cmd.to_s == "Left\n"

            times_moved += 1
            Console.Clear()

        elsif next_cmd == "right\n" or next_cmd == "Right\n"
            times_moved -= 1
            Console.Clear()
            
        else
            puts("Unknown Action of " + next_cmd)
        end

    end


    # Game Loop

    while run do
        onFrameUpdate()
        sleep(0.2) # Improves FPS
        Console.Clear()

    end
end


# 59 LINES OF CODE