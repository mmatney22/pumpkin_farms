class MAPumpkinFarms::Farm
  attr_accessor :name, :address, :phone, :url
  @@all =[]
  
  def initialize(name=nil, url=nil)
    @name = name
    @url = url
    save
  end
  
  def self.all
    MAPumpkinFarms::Scraper.scrape_farms if @@all.empty?
    @@all
  end
  
  def address
    MAPumpkinFarms::Scraper.get_address(self) if @address.empty?
    @address
  end
  
  def phone
    MAPumpkinFarms::Scraper.scrape_info(self) if @phone.empty?
    @phone
  end
  
  def url
    MAPumpkinFarms::Scraper.scrape_info(self) if @url.empty?
    @url
  end
  
  def save
    @@all << self
  end
end