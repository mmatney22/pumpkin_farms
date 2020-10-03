class MAPumpkinFarms::Info
  attr_accessor :name, :farm, :address, :phone_number
  attr_writer :info
  
  @@all =[]
  
  def initialize(name, farm)
    @name = name
    @farm = farm
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
