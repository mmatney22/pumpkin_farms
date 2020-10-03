class MAPumpkinFarms::Info
  attr_accessor :name, :farm, :address, :phone_number
  @@all =[]
  
  def initialize(name, farm)
    @name = name
    @farm = farm
    @farm.info << self
    save
  end
  
  def self.all
    MAPumpkinFarms::Scraper.scrape_info if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
end
