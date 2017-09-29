class MajorIndices::CLI

  def call
    greeting
    menu
  end

  def greeting
    puts "Welcome to the Major Indices Gem!"
  end

  def menu
    puts "Please choose from the following menu:"
    puts "    To display the indices, their current values and percent change, type 1"
    puts "    To display list of just the indices, type 2"
    puts "    To display list of the indices and their current values, type 3"
    puts "    To exit, type 'exit'"
    input = gets.strip

      if input == '1'
        display_info
        option
      elsif input =='2'
        display_indices
        option
      elsif input == '3'
        current_value
        option
      else
        puts "That is an invalid entry, please try again"
        menu
      end
  end

  def option
    puts "Would you like to view any more data? (Y/N)"
    input = gets.strip.upcase
      if input == "Y"
        menu
      elsif input == "N"
        puts "See ya later!"
      end
    end

    def display_info
      quote = MajorIndices::Index.scraped_quotes
      quote.each do |stock|
      puts "#{stock.name} - #{stock.value} - #{stock.percent}"
      end
    end

  def display_indices
    quote = MajorIndices::Index.scraped_quotes
    quote.each do |stock|
    puts "#{stock.name}"
  end
  end

  def current_value
    quote = MajorIndices::Index.scraped_quotes
    quote.each do |stock|
    puts "#{stock.value}"
  end
  end

end
