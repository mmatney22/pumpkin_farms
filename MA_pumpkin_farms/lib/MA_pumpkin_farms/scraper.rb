class MAPumpkinFarms::Scraper
  @@all = []

  def self.scrape_farms
    doc = Nokogiri::HTML(open("http://newenglandfallevents.com/")) 
    
    farms = doc.css("#listings tr")[1..38]
    
    farms.each do |farm| 
      puts farm.css("a")[0].text
    end
  end
  
  def self.all 
    @@all 
  end
  
end