class MAPumpkinFarms::Farm
  attr_accessor :name, :info
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
  
  def get_info
    MAPumpkinFarms::Scraper.scrape_info(self) if @info.empty?
    @info
  end
  
  def save
    @@all << self
  end
end