class MAPumpkinFarms::Scraper
  @@all = []

  def self.scrape_farms
    doc = Nokogiri::HTML(open("http://newenglandfallevents.com/")) 
    
    farms = doc.css("#listings tr")[1..38]
    
    things.each do {|thing| puts thing.css("a")[0].text}
  end
  
  def self.all 
    @@all 
  end
  
end