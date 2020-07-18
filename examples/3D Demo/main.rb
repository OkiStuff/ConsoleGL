require 'ConsoleGL'

def onStart()
    Console.SetTitle("3D Demo - ConsoleGL")
end

def onFrameUpdate()
    Console.Draw(Console.BigSquareMiddle(Color.YELLOW))
end

while run do
    onFrameUpdate()
    sleep(0.2)
    
end