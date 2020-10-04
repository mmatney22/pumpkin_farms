class MAPumpkinFarms::Scraper
  @@all = []
  
  def self.all 
    @@all 
  end

  def self.scrape_farms
    doc = Nokogiri::HTML(open("http://newenglandfallevents.com/massachusetts/pumpkin-patches/")) 
    
    farms = doc.css("#listings tr")[1..38]
    
    farms.each do |farm|               #make farms
      name = farm.css("a")[0].text
      MAPumpkinFarms::Farm.new(name)
    end
  end
  
  # def self.scrape_info(farm)
  #   MAPumpkinFarms::Info.new("cool info", farm)
  #   MAPumpkinFarms::Info.new("uncool info", farm)  
  # end
  
end