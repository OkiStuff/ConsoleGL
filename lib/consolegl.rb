"""
ConsoleGL Version 1.0 || DOCS

class: Color
    # Color IDs
    RED
    GREEN
    YELLOW
    BLUW
    LIGHT_BLUE
    WHITE

class: Console
    addColor(x, s):
        Adds Color to string or number
        Params:
            X = COLOR ID
            S = STRING OR NUMBER
        Usage:
            addColor(Color.RED, 'ERROR')
    LineVertical(color):
        Returns a Vertical Line
        Params:
            Color = COLOR ID
        Usage:
            LineVertical(Color.BLUE)

"""
class Color

    ## COLOR VALUE ##

    RED = 31
    GREEN = 32
    YELLOW = 33
    BLUE = 34
    LIGHT_BLUE = 36
    WHITE = false

end


class Console
    ## COLOR ##

    def self.addColor(x,s)

        if x != false:
            "\e[#{x}m#{s.to_s}\e[0m"
    end
    
    

    

    #############################################
    ###           ASCII RENDERING             ###
    #############################################


    
    ## ASCII CHARACTER RENDERING ##

    def self.LineVertical(color)
        return addColor(color, "─")
    end

    def self.LineHorizontal(color)
        return addColor(color, "│")

    def self.BigSquareMiddle(color)
        return addColor(color, "■")
    end

    def self.BigSquareTop(color)
        return addColor(color, "▀")
    end

    def self.BigSquareBottom(color)
        return addColor(color, "▄")
    end

    def self.LongSquare(color)
        return addColor(color,"█")
    end

    def self.PixelMiddle(color)
        return addColor(color, "·")
    end

    def self.PixelDown(color)
        return addColor(color, ".")
    end



    ############################################
    ####         CONSOLE RENDERING          ####
    ############################################


    ## RENDERING ##

    def self.Draw(d)

        print(d)
    end


    def self.DrawWithNewLine(d)
        puts(d)
    end

    def self.NewLine()
        puts ""
    end


    ## CONSOLE ARGUMENTS ##

    def self.Clear()
        Gem.win_platform? ? (system "cls") : (system "clear")
    end


    def self.SetTitle(title)
        system "title " + title.to_s
    end



    def SetConsoleColor(value)
        system "COLOR " + value.to_s +
    end

    def ResetConsoleColor()
        system "COLOR 07"
    end

end