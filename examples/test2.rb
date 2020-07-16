def addColor(x,string)

    "\e[#{x}m#{string}\e[0m"
end

def RED

    addColor(31)

end

def GREEN

    addColor(32)

end

def YELLOW

    addColor(33)

end

def BLUE

    addColor(34)

end

def LIGHT_BLUE

    addColor(36)

end

def WHITE
    # pass
    
end


puts addColor(31, "hello")