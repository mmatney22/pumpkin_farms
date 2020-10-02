class MAPumpkinFarms::Scraper
  @@all = []

  def self.scrape_states
    doc = Nokogiri::HTML(open("http://newenglandfallevents.com/")) 
    binding.pry
  end
  
  def self.all 
    @@all 
  end
  
end