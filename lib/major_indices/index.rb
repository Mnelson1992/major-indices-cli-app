class MajorIndices::Index
  attr_accessor :name, :price

  def self.scraped_quotes
    self.save_scraped
  end

  def self.save_scraped
    quotes = []
    quotes << self.scraped_info
  end

  def self.scraped_info
    doc = Nokogiri::HTML(open("http://www.marketwatch.com/tools/marketsummary/indices/indices.asp?indexid=1&groupid=37"))
    index=self.new
    index.name = doc.css(".company-col").text
    index.price = doc.css("aright last col").text
    index
  end
end
