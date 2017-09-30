class MajorIndices::CLI

  def call
    greeting
    MajorIndices::Scraper.scraped_info
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

  def list_countries
    puts "Here is a list of cruises all around the world:"
    MajorIndices::Country.all.each do |trips|
			puts "#{trips.name}"
    end
  end

  def menu

    puts "To view a description of a location please enter the location number:"

  end

  def goodbye
    puts "See ya later!"
  end

end
