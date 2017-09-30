class MajorIndices::Scraper
  attr_accessor :name, :description

  def self.scraped_info
    doc = Nokogiri::HTML(open("http://www.coastalliving.com/travel/top-10/best-cruises-2017#great-barrier-reef-cruise"))

    doc.css(".media-body clearfix").each do |cruise|
      name = cruise.css("h2").text
      description = cruise.css("p").first.text.strip
      MajorIndices::Cruise.new(name, description)
    end
  end
end
