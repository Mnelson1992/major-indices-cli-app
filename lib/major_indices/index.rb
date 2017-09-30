class MajorIndices::Index
  attr_accessor :name, :value, :percent

  def self.scraped_quotes
    self.save_scraped
  end

  def self.save_scraped
    quotes = []
    quotes << self.scraped_info
  end

  def self.scraped_info
    doc = Nokogiri::HTML(open("http://www.nasdaq.com/markets/indices/major-indices.aspx"))
    index = self.new
    index.name = doc.css(".indexname").text.strip.gsub("\r\n","")
    index
    #binding.pry

    #index=self.new
    #  index.name = "Nasdaq"
    #  index.value = "200000"
    #  index.percent = "13%"
    #  index
  end
end
