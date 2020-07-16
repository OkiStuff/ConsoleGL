# ConsoleGL
ConsoleGL is a rendering engine which makes it easier to render stuff in the console with Color.
## Get Started
Need to get up and running with ConsoleGL? Here is a quick template which could help you out.

First Install ConsoleGL
```
$ gem install ConsoleGL
```

If you already have ConsoleGL Installed then check for ConsoleGL Updates
```
$ gem update ConsoleGL
```

Once you have the gem installed/updated make a new ruby file and paste this in

```ruby
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
```