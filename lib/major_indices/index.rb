class MajorIndices::Index
  attr_accessor :name, :location, :about

  @@all

  def initialize(name, location, about)
    @name = name
    @location = location
    @aboout = about
    @@all << self
  end

  def self.all
    @@all
  end

  def self.scape_bars
    doc = nokogiri::HTML(open("https://www.thrillist.com/drink/new-york/rooftop-bar-nyc"))

    doc.css(".save-venue saveable-venue has spacing is standard").each do |bar|
      doc.name = bar.css("h1").text #a .save-venu_link
      doc.location = bar.css("h2").text
      doc.about = bar.css("p").text
    end
  end 
end
