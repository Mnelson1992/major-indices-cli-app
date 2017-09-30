class MajorIndices::CLI

  def call
    greeting
    MajorIndices::Scraper.scraped_info
    list_countries
    menu
    goodbye
  end

  def greeting
    puts "Having a tough time deciding where to go on vacation?"
    puts "Well let us help guide you thinking with this fancy new gem"
    puts ""
  end

  def list_countries
    puts "Here is a list of the top 10 can't miss destinations:"
    MajorIndices::Country.all.each do |trips|
			puts "#{trips.name}"
    end
  end

  def menu
    input = nil
    while input != 'exit'
    puts ""
    puts "Please choose from the following menu:"
    puts "If you see a country you are interested in traveling to, type in its number"
    puts "If you want to see a list of the countries again, type in 'list'"
    puts "Else, if you would like to exit, type 'exit'"

    input = gets.strip

    if input == 'list'
      list_countries
    elsif input.to_i > 0 && input.to_i < 11
      location  = input.to_i-1
      puts MajorIndices::Country.all[location].description
    else
      puts ""
      puts ""
      puts "Please enter a number 1 - 10, or type 'list' to see the list, or exit to 'exit'"
    end
  end
  end

  def goodbye
    puts "Need more inspiration for a trip?"
  end

end
