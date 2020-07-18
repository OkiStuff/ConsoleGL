require 'ConsoleGL'

def onStart()
    Console.SetTitle("3D Demo - ConsoleGL")
    Console.Clear()
end

def onFrameUpdate()
    Console.Draw(Console.BigSquareMiddle(Color.YELLOW))
end

run = true

while run do
    onFrameUpdate()
    sleep(0.2)
    Console.Clear()
end