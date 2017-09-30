class MajorIndices::CLI

  def call
    greeting
    list_cruises
    menu
    goodbye
  end

  def greeting
    puts "Having a tough time deciding where to go on vacation?"
    puts ""
    puts "Well let us help guide you thinking with this fancy new gem"
    puts ""
  end

  def list_cruises
    puts "Here is a list of cruises all around the world:"
    puts "cruise list"
  end

  def menu
    while input != 'exit'
    puts "To view a description of a location please enter the location number:"
    input = gets.strip
    if 
  end

  def goodbye
    puts "See ya later!"
  end

end
