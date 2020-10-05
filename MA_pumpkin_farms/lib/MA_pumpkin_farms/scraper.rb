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
      MAPumpkinFarms::Farm.new(name, url)
    end
  end
  
  def self.scrape_farm_details(farm)
    basepath = "http://newenglandfallevents.com/massachusetts/pumpkin-patches/"
    doc = Nokogiri::HTML(open("#{basepath + farm.url}"))
    address= doc.css("div.authorName__container a span").text
    phone = doc.css("div.readable.stacked.gcaBookDescription").text.strip
    farm.adress = adress
    farm.phone = phone
  end
  
end