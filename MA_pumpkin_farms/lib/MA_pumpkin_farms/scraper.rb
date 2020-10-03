class MAPumpkinFarms::Scraper
  @@all = []

  def self.scrape_farms
    doc = Nokogiri::HTML(open("http://newenglandfallevents.com/")) 
    
    farms = doc.css("#listings tr")[1..38]
    
    farms.each do |farm| 
      name = farm.css("a")[0].text
      MAPumpkinFarms::Farm.new(name)
    end
  end
  
  def self.all 
    @@all 
  end
  
end