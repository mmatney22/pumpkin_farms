class MAPumpkinFarms::Farm
  attr_accessor :name 
  attr_writer :info
  
  @@all =[]
  
  def initialize(name)
    @name = name
    @info = []
    save
  end
  
  def self.all
    MAPumpkinFarms::Scraper.scrape_farms if @@all.empty?
    @@all
  end
  
  def info
    MAPumpkinFarms::Scraper.scrape_info(farm) if @info.empty?
    @info
  end
  
  def save
    @@all << self
  end
end