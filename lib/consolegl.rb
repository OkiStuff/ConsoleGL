#ConsoleGL Version 1.0 || DOCS

#class: Color
    # Color IDs
    #RED
    #GREEN
    #YELLOW
    #BLUE
    #LIGHT_BLUE
    #WHITE

#class: Console
    #addColor(x, s):
        #Adds Color to string or number
        #Params:
            #X = COLOR ID
            #S = STRING OR NUMBER
        #Usage:
            #addColor(Color.RED, 'ERROR')
    #LineVertical(color):
        #Returns a Vertical Line
        #Params:
            #Color = COLOR ID
        #Usage:
            #LineVertical(Color.BLUE)


class Color

    ## COLOR VALUE ##

    def self.RED
        return 31
    end

    def self.GREEN
        return 32
    end

    def self.YELLOW
        return 33
    end

    def self.BLUE
        return 34
    end

    def self.LIGHT_BLUE
        return 36
    end

    def self.WHITE
        return 0
    end

end

class Console
    ## COLOR ##

    def self.addColor(x,s)

        if x != false
            "\e[#{x}m#{s.to_s}\e[0m"
        end
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
    end

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



    def self.SetConsoleColor(value)
        system "COLOR " + value.to_s
    end

    def self.ResetConsoleColor()
        system "COLOR 07"
    end


end