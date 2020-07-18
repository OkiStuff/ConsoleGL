require 'io/console'

# ripped from consolegl
def KeyPressed(key)
    ch = STDIN.getch
    if ch.to_s == key
        return true
    else
        return false
    end
end

while true do
    if KeyPressed("g") or KeyPressed("G")
        puts "G PRESSED"
    end
end