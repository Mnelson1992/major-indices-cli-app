class MajorIndices::CLI
#Make a CLI with fake data just to get a basic structure of how I want it to work
  def call
    greeting
    menu
    goodbye
  end

  def greeting
    puts "Welcome to the Major Indices CLI gem!"
    puts "This gem you will give you the 3 major U.S. Indices:"
    puts "    The Dow, NASDAQ, and S&P 500"
    puts "With this gem you can see the current value of each of the indices,"
    puts "the net change, and the percent change."
  end

  def menu
    puts "Here is a menu"
  end

  def goodbye
    puts "Goodbye!"
  end




end
